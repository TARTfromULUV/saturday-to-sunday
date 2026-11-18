# The coaching carousel

Clubs fired coaches, coordinators left with their playoff runs over, and the open
jobs filled. This piece is the carousel as it stands this week: who is out, who
is in, where the fired men landed, and what is still open.

450 to 700 words.

## What you are given

- `headCoachesOut`, `headCoachesHired`: head coaches who left a club and head
  coaches hired, each with `coach`, `job`, `from` or `to` (the club), `when`
  (as a reader would say it: "after Week 18", "Divisional Round week",
  "Staff Week") and, for a hire who left a club this season, `wasAt` (his job
  and club then).
- `coordinatorsOut`, `coordinatorsHired`: the same for offensive and defensive
  coordinators.
- `openSeats`: every club still missing a head coach or a coordinator. Can be
  empty: then every job is filled.
- `clubs`: each club with a head-coach change and the record the job comes
  with (the season just played).
- `team` and `yours`: the reader's club and its own moves. `yours` can be
  empty.

Not every list has something in it. Write only the sections that do.

## Structure

1. **The open**: the week's biggest move, usually a head coach in or out, and
   what the club's record says about the job.
2. `## The head coaches`: each club that changed its head coach, a short
   paragraph each: who left, who arrived, what he was before (`wasAt`).
3. `## The coordinators`: the coordinators who moved, grouped as the story
   suggests: playoff staffs picked apart, fired head coaches back as
   coordinators, the new staffs built around the new head coaches.
4. `## Still open`: when `openSeats` is not empty, the jobs left to fill.
5. `## Ours`: when `yours` is not empty, the reader's club. Otherwise one line
   on the reader's staff only if it changed.
6. One closing line on what the carousel leaves the league looking like.

## Rules

- A coach who left is "out" or "gone", never "fired for" a reason: the game
  does not say why. A move inside the playoffs is a coordinator leaving as his
  club went out.
- Use `when` as given; never put a date or a day on a move.
- Never invent a contract, a quote, a rumour or a candidate who is not in the
  lists. A seat in `openSeats` has no favourite.
- Records are the season just played, stated once per club.
