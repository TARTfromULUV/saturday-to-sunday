# Build the Marketplace's logo index: every partner brand's logo, cut from the ad library art, background cleared.
#
#   python3 -I scripts/tools/build-logo-index.py            (writes app/ad-library/logos/ and logos/index.json)
#   python3 -I scripts/tools/build-logo-index.py --dry      (prints the counts, writes nothing)
#
# A dev-time tool (Pillow + numpy; the app never runs it). For each colour item in app/ad-library/catalog.json and each
# brand on it that can be a partner (the same rules as lib/office/assets.mjs: a commercial category, no gambling, no
# school marks, no creatives, no unreadable logos), it:
#   1. crops the brand's catalog region out of the item's thumb (the region is in native px: scaled by thumb / native);
#   2. clears the background: the colour of the crop's border, if the border is near one colour, is keyed out where it
#      touches the edge (a flood from the border, so a logo's own white letters inside a red box stay), with a soft
#      edge, then trimmed. If the border isn't one colour, or keying would leave too little, the opaque crop is kept
#      and the version says `keyed: false`;
#   3. skips crops that can't be a logo: patchFit "no", too small, or cut off by the sheet's edge;
#   4. dedupes the same logo seen on many items (size and aspect, plus a perceptual hash), keeps up to 4 versions per
#      brand (most seen first), and caps each at 512 px.
# The index: { about, counts, brands: [{ brand, key (lib/office/assets.mjs brandKey), slug, category, fictional, versions: [{ file, from: { stadium,
# surface, itemId }, seen, keyed, patch: 'fits'|'pad', w, h }] }] }. Re-running is idempotent (the folder is rebuilt).
import json, os, re, shutil, sys
import numpy as np
from PIL import Image

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..'))
LIB = os.path.join(ROOT, 'app', 'ad-library')
OUT = os.path.join(LIB, 'logos')
DRY = '--dry' in sys.argv

COMMERCIAL = {'drink', 'food', 'bank', 'telecom', 'auto', 'outfitter', 'airline', 'insurance', 'retail', 'tech', 'generic'}
GAMBLING_CATS = {'sportsbook', 'casino'}
GAMBLING_NAME = re.compile(r'sportsbook|casino|lotter|\bbet|wager|keeneland|raffle|draftkings|fanduel', re.I)
MAX_VERSIONS, MAX_SIDE, MIN_W, MIN_H = 4, 512, 14, 10

def key_of(n): return re.sub(r'\s*\([^)]*\)\s*', ' ', n or '').strip().lower()
def name_of(n): return re.sub(r'\s+', ' ', re.sub(r'\s*\([^)]*\)\s*', ' ', n or '')).strip()
def slug_of(n): return re.sub(r'[^a-z0-9]+', '-', key_of(n)).strip('-')
def gambling(b): return b.get('category') in GAMBLING_CATS or bool(GAMBLING_NAME.search(b.get('name') or ''))
def offerable(b):
    n = b.get('name') or ''
    return bool(n) and b.get('category') in COMMERCIAL and not re.search('unreadable', n, re.I) and not gambling(b) and not b.get('creative')

def ahash(im):
    g = im.convert('L').resize((8, 8), Image.BILINEAR); px = list(g.tobytes()); m = sum(px) / 64
    return sum((1 << i) for i, p in enumerate(px) if p > m)
def ham(a, b): return bin(a ^ b).count('1')

def flood(cand):
    """The part of `cand` (bool HxW) connected to the border, by repeated 4-neighbour dilation."""
    seen = np.zeros_like(cand)
    seen[0, :] = cand[0, :]; seen[-1, :] = cand[-1, :]; seen[:, 0] |= cand[:, 0]; seen[:, -1] |= cand[:, -1]
    while True:
        g = seen.copy()
        g[1:, :] |= seen[:-1, :]; g[:-1, :] |= seen[1:, :]; g[:, 1:] |= seen[:, :-1]; g[:, :-1] |= seen[:, 1:]
        g &= cand
        if (g == seen).all(): return seen
        seen = g

def key_out(c):
    """(image, keyed): the crop with its border colour cleared to transparent and trimmed, or the opaque crop."""
    a = np.asarray(c.convert('RGBA')).astype(np.float32)
    rgb, al = a[..., :3], a[..., 3]
    H, W = al.shape
    if H < 4 or W < 4: return c, False
    border = np.concatenate([rgb[0], rgb[-1], rgb[:, 0], rgb[:, -1]])
    balpha = np.concatenate([al[0], al[-1], al[:, 0], al[:, -1]])
    if (balpha < 16).mean() > 0.9:  # already transparent around it (the owner's own PNG logos)
        bb = c.getbbox(); return (c.crop(bb) if bb else c), True
    bg = np.median(border, axis=0)
    bd = np.sqrt(((border - bg) ** 2).sum(-1))
    if (bd < 40).mean() < 0.75: return c, False  # the border isn't one colour: a photo, a gradient, a busy sheet
    d = np.sqrt(((rgb - bg) ** 2).sum(-1))
    T0, T1 = 28.0, 70.0  # fully cleared under T0, fully kept over T1, a soft edge between
    region = flood(d < T1)
    soft = np.clip((d - T0) / (T1 - T0), 0, 1)
    alpha = np.where(region, soft * 255, 255) * (al / 255)
    kept = (alpha > 128).mean()
    if kept < 0.04 or kept > 0.985: return c, False  # it would lose the logo, or there was nothing to clear
    # take the background colour out of the half-cleared edge pixels, so no halo of it is left
    f = np.clip(alpha / 255, 1e-3, 1)[..., None]
    rgb2 = np.where(region[..., None] & (f < 1), np.clip((rgb - bg * (1 - f)) / f, 0, 255), rgb)
    out = Image.fromarray(np.dstack([rgb2, alpha]).astype(np.uint8), 'RGBA')
    bb = Image.fromarray((alpha > 24).astype(np.uint8) * 255).getbbox()
    if not bb: return c, False
    out = out.crop(bb)
    if out.size[0] < MIN_W or out.size[1] < MIN_H: return c, False
    return out, True

def main():
    cat = json.load(open(os.path.join(LIB, 'catalog.json')))
    items = cat['items'] if isinstance(cat, dict) else cat
    brands = {}  # key -> { name, category, fictional, versions: [...] }
    counts = {'regions': 0, 'skipped_no': 0, 'tiny': 0, 'cut_off': 0, 'gambling': 0, 'versions_seen': 0}
    for it in items:
        if it.get('kind') != 'color' or it.get('hidden') or it.get('sportsbook') or it.get('surface') == 'Creative': continue
        bl = it.get('brands') or []
        if any(gambling(b) for b in bl): counts['gambling'] += 1; continue
        th = it.get('thumb'); path = os.path.join(LIB, th) if th else None
        if not path or not os.path.exists(path): continue
        im = None
        for b in bl:
            if not offerable(b): continue
            counts['regions'] += 1
            if b.get('patchFit') == 'no': counts['skipped_no'] += 1; continue
            r = b.get('region') or (len(bl) == 1 and {'x': 0, 'y': 0, 'w': it['width'], 'h': it['height']})
            if not r: continue
            if im is None: im = Image.open(path).convert('RGBA')
            sx, sy = im.size[0] / it['width'], im.size[1] / it['height']
            box = (round(r['x'] * sx), round(r['y'] * sy), round((r['x'] + r['w']) * sx), round((r['y'] + r['h']) * sy))
            whole = len(bl) == 1 and r['w'] >= it['width'] * .98 and r['h'] >= it['height'] * .98
            if not whole and (r['x'] < 0 or r['y'] < 0 or r['x'] + r['w'] > it['width'] or r['y'] + r['h'] > it['height']):
                counts['cut_off'] += 1; continue
            box = (max(0, box[0]), max(0, box[1]), min(im.size[0], box[2]), min(im.size[1], box[3]))
            if box[2] - box[0] < MIN_W or box[3] - box[1] < MIN_H: counts['tiny'] += 1; continue
            raw = im.crop(box)
            if raw.getchannel('A').getextrema()[1] < 16: counts['tiny'] += 1; continue
            logo, keyed = key_out(raw)
            counts['versions_seen'] += 1
            h, asp = ahash(logo), logo.size[0] / logo.size[1]
            k = key_of(b['name'])
            e = brands.setdefault(k, {'name': name_of(b['name']), 'category': b['category'], 'fictional': bool(b.get('fictional')), 'versions': []})
            vs = e['versions']
            dup = next((v for v in vs if ham(v['h'], h) <= 12 and abs(v['asp'] - asp) / max(v['asp'], asp) < .3), None)
            src = {'stadium': it['stadium'], 'surface': it['surface'], 'itemId': it['id']}
            score = (keyed, logo.size[0] * logo.size[1])
            if dup:
                dup['seen'] += 1
                if b.get('patchFit') == 'fits': dup['patch'] = 'fits'
                if score > dup['score']: dup.update(img=logo, keyed=keyed, score=score, src=src)
            else:
                vs.append({'h': h, 'asp': asp, 'img': logo, 'keyed': keyed, 'score': score, 'seen': 1, 'src': src, 'patch': 'fits' if b.get('patchFit') == 'fits' else 'pad'})
    if not DRY:
        shutil.rmtree(OUT, ignore_errors=True); os.makedirs(OUT)
    out, nkeyed, nv, size = [], 0, 0, 0
    for k in sorted(brands, key=lambda k: slug_of(k)):
        e = brands[k]; slug = slug_of(e['name'])
        # most seen first, a tall one (a logo turned on its side for a vertical sheet) last, then the keyed, the biggest
        vs = sorted(e['versions'], key=lambda v: (v['img'].size[1] > v['img'].size[0] * 1.6, -v['seen'], not v['keyed'], -v['score'][1]))[:MAX_VERSIONS]
        rec = {'brand': e['name'], 'key': k, 'slug': slug, 'category': e['category'], 'fictional': e['fictional'], 'versions': []}
        for n, v in enumerate(vs, 1):
            img = v['img']
            if max(img.size) > MAX_SIDE: img = img.copy(); img.thumbnail((MAX_SIDE, MAX_SIDE), Image.LANCZOS)
            f = f'{slug}/{n}.png'
            if not DRY:
                os.makedirs(os.path.join(OUT, slug), exist_ok=True)
                img.save(os.path.join(OUT, f), optimize=True); size += os.path.getsize(os.path.join(OUT, f))
            rec['versions'].append({'file': f, 'from': v['src'], 'seen': v['seen'], 'keyed': v['keyed'], 'patch': v['patch'], 'w': img.size[0], 'h': img.size[1]})
            nv += 1; nkeyed += v['keyed']
        out.append(rec)
    counts.update(brands=len(out), versions=nv, keyed=nkeyed, opaque=nv - nkeyed)
    idx = {'about': 'Every partner brand\'s logo, cut from the ad library art with the background cleared (keyed: false keeps the opaque crop). Built by scripts/tools/build-logo-index.py; lib/office/market.mjs reads it. Casino, lottery and sportsbook brands never appear.',
           'counts': counts, 'brands': out}
    if not DRY:
        with open(os.path.join(OUT, 'index.json'), 'w') as fh: json.dump(idx, fh, indent=1); fh.write('\n')
        size += os.path.getsize(os.path.join(OUT, 'index.json'))
    print(json.dumps(counts), f'keyed {nkeyed}/{nv} = {100 * nkeyed / max(1, nv):.0f}%', f'size {size / 1024:.0f} KB' if not DRY else '')

if __name__ == '__main__':
    main()
