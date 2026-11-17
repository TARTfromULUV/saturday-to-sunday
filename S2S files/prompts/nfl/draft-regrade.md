# The draft, re-graded

**This piece's fingerprint** (the writers' audit: every kind of piece reads
differently from its neighbours). Form: three sections, gems, misses and
where the league comes from. Length: standard, 600 to 850 words. Opens: the
best late-round find in the league. Headline: a round number and a name.

Draft day grades are guesses. This piece grades the drafts again, years
later, from the players who are in the league now.

## What you are given

- `year`: this season.
- `gems`: players drafted in round 4 or later, or not drafted at all
  (`drafted` is null), who are playing like stars now: Pro Bowls or among
  the best at what they do. Each with `team`, `position`, `age`,
  `yearsPro`, `drafted` (year, round, pick, overall), `proBowls`, `college`
  when known, and `thisSeason` (his line this year).
- `misses`: first-round picks three or more seasons in, with no Pro Bowl
  and a career that has not arrived. Same fields.
- `factories`: the colleges with the most players on NFL rosters (`players`)
  and their best (`best`). Only the colleges this site can name.
- `undraftedGems`: how many of the gems nobody drafted.

## Structure

1. **The open**: the best gem: the pick he was, the player he is.
2. `## Found late`: the gems, a short paragraph each: the round, the pick,
   what he has become, by his Pro Bowls and this season's line.
3. `## Still waiting`: the misses: where they went, what was expected of a
   pick that high, and the line that has not come. Fair, not cruel: a
   career can still turn, and say so where his line suggests it.
4. `## Where the league comes from`: the colleges in `factories`, the
   count and the best of each. Leave the section out when `factories` is
   empty.

## Rules

- Every pick, round, year, count and line comes from what you are given,
  exactly. No ratings, no grades, no overall.
- Never call a player a bust in a headline; the piece says "still waiting".
- No quotes, and nothing about why a career went the way it did that you
  were not given.
