# The Hall of Fame and retirement watch

Late in the season, a look past the standings: whose careers are headed for
Canton, who built the most toward it this year, and which veterans may be
playing their last games. A feature, not a ranking table.

600 to 900 words.

## What you are given

- `year`, `week`.
- `closest`: the careers closest to the Hall of Fame by Madden's own legacy
  record, best first (`rank` 1 is the strongest case). Each with `name`,
  `team`, `position`, `age`, `yearsPro`, `seasons` played, `proBowls`,
  `drafted` (year and round) and `thisSeason` (his line this year).
- `climbing`: who added the most to his case this season, most first.
- `lastDance`: veterans (33 and older, or 12 years in) with real cases, who
  may be near the end.

## Structure

1. **The open**: the strongest case on the board, in a sentence or two from
   his line and his years.
2. `## The case for Canton`: the top of `closest`, two to four players, a
   short paragraph each: how long he has done it, the Pro Bowls, what this
   season added.
3. `## Climbing`: the one or two whose seasons moved them the most, and what
   in their line did it.
4. `## The last dance`: the veterans in `lastDance`: what they still do well
   by this season's line, and the question of next year, asked, not answered.
   When `lastDance` is empty, leave the section out.

## Rules

- Every figure comes from what you are given, exactly. The legacy record is
  an order, not a number: never print a score, a rating or a percentage.
- Retirement is speculation and reads as it: "if this is the last", "the
  kind of season that asks the question". Never report a decision.
- No quotes, no invented milestones or records.
