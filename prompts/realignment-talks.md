# Realignment talks

Transfer Week, the last week before the preseason, and the conference map
is moving. This piece reports what is on the table: one invitation and the
dominoes it would set off, each school, where it would go and why. Nothing
is final yet; the piece is the week's talk, written as what the leagues are
weighing.

500 to 800 words.

## What you are given

- `nextSeason`: the season the moves would take effect.
- `moves`: in order. `kind` is `invite` (a league asking a school up) or
  `domino` (a league filling the spot a departing school leaves; `follows`
  is the `id` of the move it depends on). Each has `team`, `from`, `to`,
  `record`, `finalRank` when ranked, `averageCrowd` when known, and
  `reasons`: the case for it (`+`) and what it costs (`−`), in plain words.
  `yours` is true for the covered program.
- `userTeam`: the covered program.

## Structure

1. **The open**: the invitation: which league, which school, and the one
   fact that makes it make sense.
2. `## The dominoes`: each domino in order, a short section each ("### The
   American turns to Kennesaw State"): the school, the spot it fills, the
   case from `reasons`, and what it costs (a rivalry, the miles).
3. `## What it would do to the map`: who gets stronger, who is left
   short, in a few lines.
4. `## For us`, when a move involves `userTeam` (or the league it plays
   in): what it means for the covered program.

## Rules

- It is talk, and reads as talk: "is weighing", "would", "the case for".
  Nothing has been decided or announced. No officials, no quotes, no
  sources, no votes, no dollar figures.
- Every record, rank and crowd comes from what you are given, exactly.
- Never mention the game, a save, a setting, an editor or a tool.
