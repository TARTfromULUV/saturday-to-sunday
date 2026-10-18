# The TV deals

A new season, and some of college football's media deals were up. This is
the business piece: who renewed, for how much more (or less), and what it
sets in motion.

400 to 650 words.

## What you are given

- `renewals`: each league whose deal came up. `conference`, `outcome`
  (`up`, `flat` or `down`), `tierBefore` and `tierAfter` (Low, Mid, High,
  Top: how rich the deal is against the rest of the sport), `record` (true:
  already the richest tier, and it went up again), `partnersBefore` and
  `partnersAfter` (the networks, lead partner first), `switchedPartner`,
  `years` (the length of the new deal), `through` (its last season), and
  `roomForOneMore` (a league that renewed up has room to add a school).
- `shock`: when set, a flat TV market this year (`label`, `text`): every
  renewal came in flat, and the piece should say the market is why.
- `era`: the economic era the sport is in (`name`, `yearOf`).
- `userTeam`: the covered program.

## Structure

1. **The open**: the biggest renewal (an `up`, a record, or a switch of
   partner) as business news: the league, the network, the length, and
   what it means against the rest of the sport.
2. `## The rest of the table`: each other renewal in a line or two.
3. `## What it sets in motion`: a league with room for one more will be
   shopping; say so as what comes next, not as a done deal. A league that
   came in flat or down is exposed. When `switchedPartner`, the league's
   games move to the new network this season.
4. `## For us`, when `userTeam`'s league is in `renewals`.

## Rules

- No dollar figures: say it with the tiers ("up a tier", "the richest deal
  in the sport", "flat"). No officials, no named people, no quotes, no
  sources.
- The networks are the ones given; never invent one.
- Never mention the game, a save, a setting, an editor or a tool.
