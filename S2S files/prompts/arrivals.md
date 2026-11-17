# The new faces

Once a year, on the eve of the season: the classes that actually arrived. The
signing, the portal and the recruiting are all finished. Every player you are
given is on his new roster now. This is a results piece about who each school
added, not a recruiting notebook, so nobody is deciding, weighing offers,
visiting or committing. Never write any of that.

## What you are given

- `coveredTeam` — this site's school. `class` is its whole class by name:
  position, `classYear` (his year in school now), `stars` (his recruiting
  stars) and either `transferredFrom` (the school he left) or `cameFrom`
  ("high school" or "junior college"). A transfer whose `previousSchool` is
  "not known" is a transfer and nothing more: never name or guess where he
  came from. The counts beside it, and `byPosition`
  (arrivals and transfers at each position), are the class's own numbers:
  any count by position comes from there.
- `fiveStarTransfers` — every five-star player who changed schools this cycle,
  league-wide, with the school he left and the one he joined.
- `portalLedger` — every school that added or lost a five-star transfer, with
  both counts, ordered by `portalLedgerOrderedBy`. Any claim about who added
  or lost the most five-stars through the portal comes from here and says
  which it means ("four five-star transfers in, none out"). Never count
  transfers yourself.
- `fourStarTransfers` — four-star transfers into or out of ranked programs.
- `fiveStarFreshmen` — the five-star arrivals straight from high school or
  junior college, with hometowns.
- `topClasses` — the ten biggest classes, ordered by `topClassesOrderedBy`
  (five-star arrivals, then four-star, then size). This is NOT a national
  class ranking and never call it one. Say what it is: "the most five-stars",
  "four five-stars and twelve four-stars". Never give a class a rank number.
- `schoolRank` / `fromRank` — the school's current media-poll rank when it is
  ranked. Absent means unranked; never say "unranked" unless the absence is
  the point.
- `league` — how many players arrived anywhere, and how many of them were
  transfers.

## Structure

1. **Lead with the covered team's class**, if it has one. The biggest name
   first, and if he is a transfer, where he came from. Then the shape of the
   class in exact counts: how many from high school, how many from junior
   college, how many transfers, the star mix. Name the transfers and the
   schools they left. Say what the class is built around by position, from
   the list you have, not from guesses about the depth chart.
2. **The portal's biggest moves.** The five-star transfers across the
   country, grouped by what they mean: a contender adding a five-star, a
   program losing one to a rival, a school landing more than one. Name the
   player, his position, the school he left and the one he joined, and the
   ranks when they are given. Four-star transfers into ranked programs are
   the supporting cast here.
3. **The biggest classes**, from `topClasses`, in counts. Where a big class
   was built mostly through the portal or mostly from high school, that is
   worth a sentence, because the counts say it.
4. **The freshmen to know**: the five-star arrivals from high school, with
   hometowns. A short section; they have not played a snap.

Close on the covered team: what this class changes for its season, in one or
two sentences grounded in who arrived.

## Rules

- Never name where a number came from: no "ledger", "list", "table",
  "counts", "the data". Say the fact.
- Every number is a count you were given. Never total, subtract or compare
  counts yourself beyond what the fields state ("more five-stars than anyone"
  only if `topClasses` shows it).
- A transfer's reason for leaving is not known. Never give one: no playing
  time, no coaching change, no NIL, no "seeking a bigger role".
- No player has a stat line here. Never cite production, snaps, a starting job
  or a depth-chart spot; none of it is in the data.
- Never cite an overall rating or a player's development trait.
- Conferences are not given. Never say a player came "out of the SEC" or that
  a school is a "power program".
- Eligibility is not given. A freshman's year is his year; never say how many
  seasons he has left.
- Players with the same stars are equals here. Never call one "the biggest
  name" over another five-star.
- No order of events is known. Never write that a school added one player
  "then" lost another.
- "Kept at home", "shopping", "rebuilt" and "round out the haul" describe a
  recruiting process or a previous roster you were not given. Say who
  arrived.
- Stars are published recruiting facts: "a five-star tight end" is fine.
- Call a junior college arrival exactly that; call a high school arrival a
  freshman.
- 600 to 850 words. Headline makes a claim about the covered team's class or
  the portal's biggest move, never a label like "The new faces".
