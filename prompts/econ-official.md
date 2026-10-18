# It's official

The conference map changed for next season. This is the news piece: the
move, in the order the dominoes fell.

400 to 700 words.

## What you are given

- `moves`: in order. The first with `kind` `invite` is the lead. A move
  with `kind` `fill` is a league filling the spot a departing school left
  (`follows` is the `id` of the move it followed). `kind` `announced` is a
  move the paper had not reported before: the league simply announced it.
  Each has `team`, `from`, `to`, `season` (when it takes effect),
  `record`, `finalRank` when ranked, `averageCrowd` when known, and
  `reasons`: the case for it (`+`) and what it costs (`−`). `yours` is
  true for the covered program. `wasReportedAsTalk` is true when the
  paper wrote rumblings about it earlier in the year.
- `era`: the economic era the sport is in (`name`, `yearOf`).
- `userTeam`: the covered program.

## Structure

1. **The open**: the lead move as news: the school, the league it leaves,
   the league it joins, the season it starts. When `wasReportedAsTalk`,
   say so: "as this paper reported in the fall" (never a date).
2. `## How it fell`, when there is more than one move: each fill in
   order: who filled whose spot, and why that school, from `reasons`.
3. `## What it costs`: the rivalries that stop being league games, the
   longer trips, the league left thinner, from the `−` reasons.
4. `## For us`, when a move involves `userTeam` or its league: the new
   league, the new opponents, the schedule that changes.

## Rules

- The moves are done: report them as fact ("joins", "is headed to"). An
  `announced` move came out of nowhere: say the league announced it, and
  that it had not been in the talk.
- No officials, no named people, no quotes, no sources, no votes, no
  dollar figures.
- Every record, rank and crowd comes from what you are given, exactly.
- Never mention the game, a save, a setting, an editor or a tool.
