#!/usr/bin/env python3
"""tools/ad-logo-best.py — THE BEST LOGO ON FILE FOR EACH BRAND, AND THE BACKDROP IT NEEDS.

The owner, November 26, 2026: «the logo on the company page, it's always white on white … we should really do an audit of
the best logo for what we have on file». Every brand in app/ad-library/logos/index.json has one or more cuts from the
stadium mod's textures. This reads each cut and writes app/ad-library/logos/best.json:

    { "brands": { "<brand name>": { "file", "w", "h", "bg": "dark" | "light", "lum", "small" } }, "audit": { ... } }

  the best cut   the biggest by area, a cut with its background cleared ahead of one without
  the backdrop   from the logo's own visible pixels: a light logo goes on a dark tile, a dark logo on a light tile
  small          true when the cut is under 200 pixels on its long side: it will look soft at any size on a phone

Run from the repo root:  python3 tools/ad-logo-best.py     (needs Pillow). The fresh AD mode reads best.json through its
door (lib/ad/doors.mjs logoOf).
"""
import json, os, sys
from PIL import Image

HERE = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'app', 'ad-library', 'logos')
index = json.load(open(os.path.join(HERE, 'index.json'), encoding='utf8'))

def measure(path):
    im = Image.open(path).convert('RGBA')
    px = list(im.get_flattened_data() if hasattr(im, 'get_flattened_data') else im.getdata())
    seen = [(r, g, b) for r, g, b, a in px if a > 40]
    if not seen:
        return None
    lum = sum(0.2126 * r + 0.7152 * g + 0.0722 * b for r, g, b in seen) / len(seen)
    return {'w': im.width, 'h': im.height, 'lum': round(lum), 'cover': round(len(seen) / len(px), 2)}

brands, audit = {}, {'brands': 0, 'withLogo': 0, 'light': 0, 'dark': 0, 'small': 0, 'longSide': []}
for b in index['brands']:
    audit['brands'] += 1
    best = None
    for v in b.get('versions', []):
        f = os.path.join(HERE, v['file'])
        if not os.path.exists(f):
            continue
        m = measure(f)
        if not m:
            continue
        score = m['w'] * m['h'] * (1 if v.get('keyed') else 0.6)
        if not best or score > best['score']:
            best = {'score': score, 'file': v['file'], 'keyed': bool(v.get('keyed')), **m}
    if not best:
        continue
    # a cut that kept its own background nearly fills its box: it carries its backdrop, so the tile only has to not fight it
    bg = 'dark' if best['lum'] >= 128 else 'light'
    long_side = max(best['w'], best['h'])
    brands[b['brand']] = {'file': best['file'], 'w': best['w'], 'h': best['h'], 'bg': bg, 'lum': best['lum'], 'keyed': best['keyed'], 'small': long_side < 200}
    audit['withLogo'] += 1
    audit[bg] += 1
    audit['small'] += 1 if long_side < 200 else 0
    audit['longSide'].append(long_side)

ls = sorted(audit.pop('longSide'))
audit.update({'longSideMedian': ls[len(ls) // 2] if ls else 0, 'longSideMax': ls[-1] if ls else 0, 'atLeast400': sum(1 for v in ls if v >= 400), 'atLeast800': sum(1 for v in ls if v >= 800)})
out = {'about': 'The best cut on file for each brand and the backdrop it needs (tools/ad-logo-best.py). bg dark: a light logo, shown on a dark tile; bg light: a dark logo, shown on a light tile.', 'audit': audit, 'brands': brands}
json.dump(out, open(os.path.join(HERE, 'best.json'), 'w', encoding='utf8'), indent=0, ensure_ascii=False)
print(json.dumps(audit))
