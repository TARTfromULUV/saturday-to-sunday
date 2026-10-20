# Branding: everything the app can take, by folder and filename

Drop files in the branding folder outside the app (Settings prints the path):

- Windows `%LOCALAPPDATA%\VintageESPNApp\branding\`
- Mac `~/Library/Application Support/VintageESPNApp/branding/`

`.png`, `.jpg`, `.jpeg` and `.webp` all work (`.svg` too for art and logos,
not for headshots). Filenames are lower case with hyphens. Reload after.
What ships with the app is marked; your file replaces it.

## 1. Writer headshots — `branding/staff/`

Square, drawn small and round-cornered. A writer with no image gets a
monogram. If you renamed a writer in Settings, use the filename Settings
prints next to the name.

The stock ten ship (both desks, below; the public build strips them and
swaps in invented names). For a writer you add or rename yourself, Settings ▸
your league ▸ Articles ▸ Staff ▸ Writer portraits ▸ **Add portraits** takes an
image named after them (or a .zip of several) and puts it in the branding
folder for you; yours replace the stock ones of the same name.

NFL desk:

```
staff/tom-varga.png
staff/nick-castellano.png
staff/joe-pruitt.png
staff/sam-okafor.png
staff/walt-kessler.png
```

College desk:

```
staff/ray-halloran.png
staff/dana-whitcomb.png
staff/marcus-bell.png
staff/theo-marsh.png
staff/jack-pellegrino.png
```

A beat reporter you named per franchise (Settings ▸ the league ▸ beat
reporter) wants `staff/<their-name-slug>.png` the same way.

## 2. Network logos — `branding/networks/`

None ship; the app draws a coloured badge until one is here. Used on every
game card, the slate, the TV rights deals.

```
networks/cbs.png
networks/fox.png
networks/nbc.png
networks/abc.png
networks/espn.png
networks/espn2.png
networks/espnu.png
networks/espnplus.png        (ESPN+)
networks/prime-video.png
networks/netflix.png
networks/nfl-network.png
networks/peacock.png
networks/sec-network.png
networks/acc-network.png
networks/big-ten-network.png
networks/cbssn.png
networks/fs1.png
networks/the-cw.png
networks/tnt.png
```

Transparent, square or wide; they are drawn about 18 to 22 pixels high.

## 3. Conference marks — `branding/conferences/`

`afc.png` and `nfc.png` ship. The college ones do not: they come from your own
game through the S2S editor plugin (in progress), or from the owner's logo
pack as an optional add-on. If any college mark ever lands in
`branding-defaults/`, the public build strips it (the conferences'
trademarks):

```
conferences/big-ten.png
conferences/sec.png
conferences/acc.png
conferences/big-12.png
conferences/pac-12.png
conferences/american.png
conferences/cusa.png
conferences/mac.png
conferences/mw.png
conferences/sun-belt.png
```

The slug is the conference name as the game spells it, lower case, hyphens
for spaces (so `big-12`, `sun-belt`, `mw`).

The college ones can come from the game itself instead: the editor plugin's
**Tools > S2S > Conference logos: export to S2S** writes them into the
reader's `branding/conferences/` (docs/EDITOR-PLUGIN.md, "The conference
logos, from the game").

## 4. League marks — `branding/league-logos/`

`nfl.png` and `cfp.png` ship. `ncaa.png` does not (the logo pack has it as an
optional add-on; the public build strips it if it ever ships):

```
league-logos/ncaa.png
```

## 5. Section art — `branding/sections/`

Wide, roughly 16:9, one per section; a section with no image keeps its
plain plate. These ship: playoff, recruiting, the-carousel, the-draft,
the-money, top-25, upcoming-picks, statistics, sportscenter (Game Stories).
Missing, either name works:

```
sections/scores.png          or scoreboard.png
sections/standings.png
sections/team.png            or your-team.png
sections/column.png          or the-column.png
sections/transactions.png    or the-wire.png / wire.png      (NFL)
sections/crossover.png                                       (NFL · Saturday to Sunday)
```

## 6. The wordmark — `branding/wordmark.png`

Ships. Replace to put your own name on the masthead; wide, about 27 pixels
high when drawn.

## Not branding

Team logos come from the game and the app's own logo table; team photos are
the image libraries (`app/team-images-library`, `-nfl`), built by their own
tools. Nothing to drop here for those.
