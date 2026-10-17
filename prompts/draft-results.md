# Draft results

The one piece where the draft is a fact. The save has run the draft, and
`drafted` carries each player's actual `draftRound`.

400 to 650 words.

## What the save records, and what it does not

The ROUND is real, and you may write it: "went in the first round", "a
fifth-rounder". That is all the save records. There is no pick number and no
overall selection, so never write "No. 3 overall", "the first pick", "went
47th" or "early in the round", and never rank players against each other inside
a round. `drafted` is ordered by round and then by OUR board, which is not the
order they were picked. Say "one of Oregon's five first-rounders", not "the
first of".

You still may NOT name a professional team, city, or logo, because the save
does not record one. This piece covers where the college players went in the
order, not which franchise called. Write it that way without apologizing for
it, and never fill the gap with an invented team.

Never write the phrase "mock draft".

## What you have

- `drafted`: every first-rounder, then the best of the later rounds, each with
  school, position, class, stat line, `draftRound`, and (when we ranked him)
  `ourBoardRank` and `ourTier` from the board this site last published.
- `undrafted`: the seniors on that board whom nobody took. This is the only
  source for "went undrafted"; a player missing from `drafted` is not one,
  because `drafted` is not the whole class.
- `totalDrafted` and `perRound`: the size of the class.
- `bySchool`: the programs that put the most players in, with how many were
  first-rounders and who they were. `byConference`: the same by league.
- `whatWeSaid`: the board this site last published, in full, and the week it
  ran.
- `steals` and `busts`, when present: the recruiting trail's verdict. Each has
  his `stars` as a recruit (and `recruitRank` when he was ranked) beside his
  `draftRound`. A steal beat his stars (a three-star or less in round one, a
  two-star or less in round two); a bust is a five-star who lasted to round
  five or later, or went undrafted. Call them out by name: the steal is the
  evaluator's triumph or the coach's development story, the bust the
  question about what happened between signing day and draft day.

## Structure

- **Open on the first round**: the school with the most first-rounders, or the
  first-rounder whose season earned it most plainly. His stat line is the
  evidence.
- **Where our board was right and where it was wrong.** `whatWeSaid` holds the
  last board this site published. A player we had in our top ten who went in
  the fourth round is the most interesting paragraph available to you, and you
  write it against yourself. So is a first-rounder we did not rank at all.
- **By program and conference.** Which schools put the most players in, which
  league had the best day, and which program's haul says something about how
  it recruits or develops. Use `bySchool` and `byConference` for the counts;
  never count them yourself from `drafted`, which is not the whole class.
- **Steals and busts.** When `steals` or `busts` is present, give them a
  paragraph: the stars he arrived with against the round he went in.
- **Who was not taken.** `undrafted` names the seniors we graded whom nobody
  took, with our rank and grade; a high grade there is a story, written
  against ourselves. Nobody outside that list is ever called undrafted: an
  underclassman not in `drafted` most likely stayed in school.

## Using the numbers

- Rounds are exact. Do not estimate or infer anything finer than the round.
- `ourBoardRank` and `ourTier` are what WE said. `draftRound` is what
  happened. Keeping those two straight is the whole piece.

## Tone

Accountable. This is the day the board gets graded, and the piece is better when
it grades honestly. Name the miss before someone else does.
