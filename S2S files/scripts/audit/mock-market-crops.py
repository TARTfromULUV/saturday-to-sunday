# Mock-only: cut each brand's logo out of the ad library thumbs (catalog regions), dedupe versions, and draw
# "on your stadium" previews on a plain black-and-gold base. Writes PNGs + an index JSON into OUT.
# python3 -I scripts/audit/mock-market-crops.py <out dir> <brand keys, comma-separated: pepsi,ford,...>
import json, os, sys, re
from PIL import Image, ImageDraw, ImageFilter
LIB = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'app', 'ad-library')
OUT = sys.argv[1]
cat = json.load(open(f'{LIB}/catalog.json')); items = cat['items'] if isinstance(cat, dict) and 'items' in cat else cat
HIDE = re.compile(r'casino|lottery|sportsbook|bet|gaming|draftkings|fanduel', re.I)
def key(n): return re.sub(r'[^a-z0-9]+', '-', n.lower()).strip('-')
def ahash(im):
    g = im.convert('L').resize((8, 8), Image.BILINEAR); px = list(g.getdata()); m = sum(px) / 64
    return sum((1 << i) for i, p in enumerate(px) if p > m)
def ham(a, b): return bin(a ^ b).count('1')
crops = {}  # brand key -> list of versions
stats = {'brands': set(), 'clean': set(), 'skipped_no': 0, 'tiny': 0}
for it in items:
    th = it.get('thumb'); 
    if not th or not os.path.exists(f'{LIB}/{th}'): continue
    im = None
    for b in it.get('brands') or []:
        n = b.get('name') or ''
        if b.get('fictional') or HIDE.search(n) or HIDE.search(b.get('category') or '') or b.get('category') in ('school',): continue
        k = key(n); stats['brands'].add(k)
        if b.get('patchFit') == 'no': stats['skipped_no'] += 1; continue
        r = b.get('region');
        if not r: continue
        if im is None: im = Image.open(f'{LIB}/{th}').convert('RGBA')
        sx = im.size[0] / it['width']; sy = im.size[1] / it['height']
        box = (int(r['x'] * sx), int(r['y'] * sy), int((r['x'] + r['w']) * sx), int((r['y'] + r['h']) * sy))
        if box[2] - box[0] < 14 or box[3] - box[1] < 10: stats['tiny'] += 1; continue
        c = im.crop(box); h = ahash(c); asp = c.size[0] / c.size[1]
        vs = crops.setdefault(k, {'name': n, 'versions': []})['versions']
        dup = next((v for v in vs if ham(v['h'], h) <= 12 and abs(v['asp'] - asp) / max(v['asp'], asp) < .3), None)
        src = {'item': it['id'], 'surface': it['surface'], 'stadium': it['stadium'], 'fit': b.get('patchFit')}
        if dup:
            dup['n'] += 1; dup['from'].append(src)
            if c.size[0] * c.size[1] > dup['area']: dup.update(img=c, area=c.size[0] * c.size[1])
        else: vs.append({'h': h, 'asp': asp, 'img': c, 'area': c.size[0] * c.size[1], 'n': 1, 'from': [src]})
        stats['clean'].add(k)
GOLD, BLACK, WHITE, TURF, TURF2 = (253, 187, 48), (14, 14, 16), (245, 245, 240), (40, 112, 52), (34, 98, 46)
def fit(logo, W, H, pad=.12):
    lw, lh = logo.size; s = min(W * (1 - 2 * pad) / lw, H * (1 - 2 * pad) / lh); return logo.resize((max(1, int(lw * s)), max(1, int(lh * s))), Image.LANCZOS)
def card(logo, W, H, bg, border=None, rr=10):
    base = Image.new('RGBA', (W, H), (0, 0, 0, 0)); d = ImageDraw.Draw(base)
    d.rounded_rectangle([0, 0, W - 1, H - 1], rr, fill=bg, outline=border, width=4 if border else 0)
    l = fit(logo, W, H); base.alpha_composite(l, ((W - l.size[0]) // 2, (H - l.size[1]) // 2)); return base
def previews(logo):
    P = {}
    P['field_walls'] = card(logo, 640, 160, BLACK, GOLD, 6)            # one wall panel, black with a gold rule
    s = Image.new('RGBA', (720, 120), BLACK); d = ImageDraw.Draw(s); d.rectangle([0, 0, 719, 8], fill=GOLD); d.rectangle([0, 111, 719, 119], fill=GOLD)
    l = fit(logo, 720, 104, .1); s.alpha_composite(l, ((720 - l.size[0]) // 2, 8 + (104 - l.size[1]) // 2)); P['ad_boards'] = s  # an ad board strip
    f = Image.new('RGBA', (640, 320), TURF); d = ImageDraw.Draw(f)
    for i in range(0, 640, 80): d.rectangle([i, 0, i + 39, 319], fill=TURF2)
    d.line([(320, 0), (320, 319)], fill=WHITE, width=4)
    l = fit(logo, 640, 320, .28); f.alpha_composite(l, ((640 - l.size[0]) // 2, (320 - l.size[1]) // 2)); P['field'] = f  # the field sponsor logo at the 25
    P['goal_pads'] = card(logo, 180, 420, GOLD, BLACK, 28)             # a goal pad
    P['jersey_patch'] = card(logo, 300, 300, BLACK, GOLD, 40)          # the jersey patch
    P['wall_wrap'] = card(logo, 600, 200, BLACK, GOLD, 4)
    P['tunnel_wrap'] = card(logo, 480, 240, GOLD, BLACK, 8)
    return P
idx = {'stats': {'brands': len(stats['brands']), 'clean': len(stats['clean']), 'skipped_no': stats['skipped_no'], 'tiny': stats['tiny']}, 'brands': {}}
want = set(sys.argv[2].split(',')) if len(sys.argv) > 2 else set()
for k, e in crops.items():
    vs = sorted(e['versions'], key=lambda v: (-v['n'], -v['area']))[:4]
    rec = {'name': e['name'], 'versions': []}
    os.makedirs(f'{OUT}/logos/{k}', exist_ok=True) if k in want or len(idx['brands']) < 0 else None
    for i, v in enumerate(vs, 1):
        meta = {'v': i, 'n': v['n'], 'size': v['img'].size, 'from': v['from'][:3]}
        if k in want:
            up = v['img']; sc = max(1, int(160 / max(1, up.size[1]))); up = up.resize((up.size[0] * sc, up.size[1] * sc), Image.LANCZOS)
            up.save(f'{OUT}/logos/{k}/v{i}.png'); meta['png'] = f'logos/{k}/v{i}.png'
            if i == 1:
                for s, p in previews(v['img']).items(): p.save(f'{OUT}/logos/{k}/on-{s}.png')
        elif i == 1:
            os.makedirs(f'{OUT}/logos/_marks', exist_ok=True); m = v['img']; m.thumbnail((96, 96)); m.save(f'{OUT}/logos/_marks/{k}.png'); meta['mark'] = f'logos/_marks/{k}.png'
        rec['versions'].append(meta)
    idx['brands'][k] = rec
for k in want:
    if k in crops:
        m = crops[k]['versions']; best = sorted(m, key=lambda v: (-v['n'], -v['area']))[0]['img'].copy(); best.thumbnail((96, 96))
        os.makedirs(f'{OUT}/logos/_marks', exist_ok=True); best.save(f'{OUT}/logos/_marks/{k}.png'); idx['brands'][k]['versions'][0]['mark'] = f'logos/_marks/{k}.png'
json.dump(idx, open(f'{OUT}/logos/index.json', 'w'), indent=1)
print(json.dumps(idx['stats']), {k: len(idx['brands'][k]['versions']) for k in want if k in idx['brands']})
