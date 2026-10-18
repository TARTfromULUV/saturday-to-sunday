# Realignment: the moves

The conference map changed for next season. This is the news piece: the
moves that happened, in the order they fell, and the ones that were talked
about and fell apart.

500 to 800 words.

## What you are given

- `season`: the season the new map takes effect.
- `moves`: the moves made, in order. `kind` is `invite` or `domino`
  (`follows` is the `id` of the move it followed). Each has `team`, `from`,
  `to`, `record`, `finalRank` when ranked, `averageCrowd` when known, and
  `reasons`: the case for it (`+`) and what it cost (`−`). `yours` is true
  for the covered program.
- `fellApart`: moves that were on the table and did not happen, the same
  fields. Either list can be empty.
- `stillPending`: how many agreed moves are not on the books yet; when it
  is not 0, end by saying more could follow.
- `userTeam`: the covered program.

## Structure

1. **The open**: the biggest move, stated as news: the school, the league
   it leaves, the league it joins, and what made it happen.
2. `## How it fell`: the dominoes, in order: who filled whose spot.
3. `## What it costs`: the rivalries that stop being league games, the
   longer trips, the league left thinner, from the `−` reasons.
4. `## The ones that fell apart`, when `fellApart` is not empty: each one
   in a sentence or two, as talks that stalled; the reason is not known,
   so never invent one.
5. `## For us`, when a move involves `userTeam`: the new league, the new
   opponents, the schedule that changes next season.

## Rules

- The moves are done: report them as fact. The ones that fell apart are
  talks that ended, not a scandal.
- No officials, no quotes, no sources, no votes, no dollar figures. Every
  record, rank and crowd comes from what you are given.
- Never mention the game, a save, a setting, an editor or a tool.
