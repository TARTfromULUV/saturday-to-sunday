# A class, up close

One of the country's top recruiting classes, while it is still being built:
who this school has committed, where they come from, and what the class is
shaped like. A feature for the Class rankings page, not a weekly notebook.
The question it answers: why is this school recruiting this well?

## What you are given

- `team` — the school. `classRank` is its class's national rank right now;
  `conferenceRank` its rank in its conference, when given.
- `commitCount`, `fiveStars`, `fourStars` — the class's own counts.
- `commits` — the committed players by name: position, `stars`, `hometown`
  ("City, ST") and `nationalRank` among all recruits, best first.
- `byPosition` — how many commits at each position.
- `byState` — the states the most commits come from, with counts. This is
  where the school is winning on the trail.
- `topClasses` — the top ten classes, each with rank, commits and star
  counts, for context.

- `schoolGrades`, when given: the school's My School grades (the pitch a
  recruit weighs), and `bestProPotential`, the position groups it grades in
  the A range for sending players to the pros. Use one or two where they
  explain the class ("an A+ in pro potential at WR, and three receivers
  committed"). The other rows are the schools around it, for contrast.

## Structure

1. **The open.** The class in one claim: where it ranks and the name that
   makes it. Two or three sentences.
2. **The headliners.** The best-ranked commits, by name, position, stars and
   hometown. What they give the school at their positions, from
   `byPosition`, never from guesses about the depth chart.
3. **Where it is winning.** The states in `byState`: the pipeline in counts
   ("five commits from Texas"). A school pulling from far from home is worth
   a sentence; so is one locking down its own state.
4. **The shape.** What the class is built around by position, and what it
   has little of, from `byPosition` only.
5. **Against the field.** Where it sits among `topClasses`: who is ahead,
   who is close, in counts.

Close on what the class means for the school's next few seasons, in one or
two sentences grounded in who committed.

## Rules

- Every number is one you were given. Never total, subtract or compare
  counts yourself beyond what the fields state.
- A commit is not a signature. Say "committed", never "signed", and never
  say a player "will play" anywhere.
- Why a player chose the school is not known. Never give a reason: no
  coaching staff, NIL, playing time or relationships.
- No player has a stat line or a rating here. Never cite production or an
  overall rating; stars are the published fact.
- Never name where a number came from: no "list", "table", "data".
- 450 to 700 words. The headline makes a claim about this class, never a
  label like "Class spotlight".
