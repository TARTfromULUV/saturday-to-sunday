# Stadium Ad Library

284 advertising and board textures harvested from the **NCAA Community Stadium Experience Mod 1.9**
for EA College Football 27, catalogued for Saturday to Sunday's Front Office (the Marketplace's shelf:
sponsor art for the stadium's branding slots, read by `lib/office/assets.mjs`). Credit the mod's authors
wherever this art is shown. The mod's author cleared it for any use; the
rest are the owner's own brands (U-LUV Foods, CPG Playbook). A web-sourced row (`source: "web"`, a real trademark;
none today) is owner-only: the public build takes it out.

What is here:
- `catalog.json` / `catalog.csv` - one row per texture (schema below)
- `thumbs/<id>.png` - 512px preview of each texture
- `branding-slots.json` - the stadium surfaces a sponsor or the school can own (for sale, painted,
  live LED: never offered), and which surface types fit each (see `docs/AD-LIBRARY.md`)

(The old contact sheet, `index.html`, was not restored: the Marketplace's shelf is the way to browse.)

What is **not** here: `png/` (full-size PNGs, 156 MB) and `raw/` (the DDS export, 1.4 GB). Both stay
on the builder's PC and are ignored by git; `tools/ad-library-build.py` recreates them from `raw/`.

Catalog row:

| field | meaning |
|---|---|
| `id` | texture name, also the thumb file name |
| `stadium` | venue folder the mod authored it for (`lsu`, `kennesaw_state`, `atlanta_b` ...) |
| `surface` | Ad board, Video board, Wall wrap, Tunnel, Field wall, Logo sheet, Field art, Signage, Banner, Scoreboard, Flag, Concourse, Other |
| `kind` | `color` (usable artwork), `surface-detail` (normal/spec maps), `mask` |
| `width`, `height`, `aspect` | native texture size; re-import at this size |
| `brands` | `{ name, category, region {x,y,w,h} (native px), patchFit, fictional? }` per brand shown, read from the images (draft until `tag_status` is `approved`) |
| `category` | the item's main sponsor: drink, food, bank, telecom, auto, outfitter, airline, insurance, retail, tech, school, generic, sportsbook |
| `sportsbook`, `hidden` | a betting brand (a sportsbook) is on it; hidden items never show on the shelf (the file stays). Casinos are `casino` and show |
| `patchFit` | the item's best logo for the jersey patch: `fits`, `pad` or `no` |
| `tag_status`, `tag_conf`, `tag_note` | draft or approved; how sure the read was; what the image is |
| `source` | `{ mod, version, author, link }`: who made the art (credit on the shelf) |
| `asset_path` | where the texture lives in the game's data |
| `png`, `thumb` | paths relative to this folder |

The artwork is **not tied to a stadium**: any board image can be imported into any stadium's texture
of the same surface type (Stadium Viewer > Textures > Import). `stadium` says whose layout the sheet
was drawn for; `surface` + size say where it fits. Most ad boards are multi-ad sheets (6-10 logos on one
image), so single ads need cropping.

**The owner's brand (U-LUV Foods).** `ULUV_logo` (the master logo, on the Ad boards shelf, for every logo spot) and six
`ULUV_card_*` product ads (square; `surface: "Creative"`, the brand's `creative: true`). Creatives are kept with the brand
and shown on its Marketplace page, never offered as stadium art. Source: U-LUV, the owner's own brand.

**The owner's brand (CPG Playbook).** Three logos on the Ad boards shelf: `CPG_icon` (square, the mark over the wordmark;
fits the patch and the pads), `CPG_banner` (4:1 on dark, for board strips) and `CPG_wordmark` (6:1 on clear, for the field
and light surfaces). Source: CPG Playbook, the owner's own brand.

Refresh for a new mod version: see `docs/AD-LIBRARY.md`.
