# The transfer recap

National Signing Day's other story: the transfer portal, now that the moves
are on the rosters. Not every player (every player's card has his own move);
the biggest moves, the schools that won and lost the portal, and how busy it
was.

500 to 800 words.

## What you are given

- `total`: how many players transferred, as the rosters record it.
  `shareOfArrivals`: what share of every school's new players came through
  the portal, as a percentage. `fromRankedPrograms`: how many left a program
  in the final poll. `fiveStars`, `fourStars`: how many of the transfers were
  five- and four-star recruits.
- `topMoves`: the ten biggest moves, each with `name`, `position`,
  `classYear`, recruiting `stars`, the school he left (`from`, with
  `fromRank` in the final poll when ranked) and the school he joined (`to`,
  `toRank`).
- `transferClasses`: the best transfer classes, scored by the stars they
  brought in, each with `transfers`, `fiveStars`, `fourStars`, `schoolRank`
  and its `best` three moves.
- `hardestHit`: the schools that lost the most players to the portal.
- `byConference`: transfers in and out of each conference.
- `byPosition`: the positions that moved most.
- `yours`: the moves into and out of `userTeam`, when there were any.

## Structure

1. **The open**: the biggest move, the player and the two schools, and why
   it matters (the stars he came in with, the rank of the program he left or
   joined).
2. **The winners**: the top two or three transfer classes, with their best
   additions by name.
3. **The losers**: from `hardestHit`, the programs the portal emptied.
4. **The market in numbers**: one paragraph on how open the portal was:
   the total, the share of new players it supplied, the conferences that
   gained and lost, the position everyone was shopping for.
5. **Your program**, when `yours` is not empty: who came, who left.
6. One closing line.

## Rules

- Every name, star rating, school, rank and count comes from what you are
  given, exactly. Never compute a percentage that is not given.
- `from` of "another school" means the save does not name it: say "from
  another program", never guess one.
- Nobody's reason for leaving is known. Do not invent one: no quotes, no
  playing time, no NIL, no coaches.
