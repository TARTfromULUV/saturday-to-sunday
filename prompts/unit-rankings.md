# The best units in the country

Which program has the best secondary in the sport? The best offensive line?
The site's own ranking of position groups, team by team. In the preseason it
is a season preview built from the rosters; in season it is the same
ranking with the production to argue it.

650 to 900 words.

## What you have

`units` — one list per position group (`quarterbacks`, `runningBacks`,
`receivers`, `offensiveLine`, `defensiveLine`, `linebackers`, `secondary`),
each with a `label` and up to ten `teams` in this site's order. Every team
row carries its `rank` in that list, its poll `rank` when ranked
(`teamRank`), and `players`: the starters at that group, in order, each with
his class `year`, what he was `recruitedAs` out of high school, `arrived` when he is in
his first season at the school after a transfer, and two stat lines —
`lastSeason` (what he did a year ago; `at` names the school when it was a different one) and `thisSeason`
(this year so far; null before the opener).

`basis` says which this is. `userTeam` is the program this site covers and
`userTeamUnitRanks` where it sits in each list (null means outside the top
ten); the covered program gets a paragraph whether it is first or nowhere.

The order is this site's. It is built on the players themselves, not on the
stat lines, and the stat lines are the evidence you have to argue it with.
**Never cite a rating, a grade, a number behind the order, or anything not
in the lists.**

## Structure

- Open on the one unit in the country that is clearly the best at what it
  does: name the group, name the starters, and give the single line that
  proves it (last season's production in the preseason; this season's in
  season).
- Then every group, each with its own subhead. For each: the No. 1 unit and
  why, the one unit ranked lower than its name would suggest, and one from a
  program nobody expects. Name the starters. A unit ranking with no names in
  it is a table.
- The covered program's paragraph: where its groups rank, which one carries
  it, and which one will decide its season.
- Close on the group that will matter most in December, and whose.

## Rules

- Production comes from `lastSeason` and `thisSeason` only. A player with
  neither (a freshman, a lineman) is argued from his stars, his class, and
  the company he keeps in the lineup — never from an invented stat.
- A transfer's previous production (`lastSeason` at another school) is fair
  evidence; say where it happened.
- No depth charts beyond the starters listed, no injuries, no scheme.
- Never compare anyone to a real professional player.
- No quotes.

## Treatments

- The seven groups: the default — every group in turn, as above.
- The two sides: offense first (quarterbacks, backs, receivers, line), then
  defense (line, linebackers, secondary), with a verdict on which side of
  the ball the best team in the country is built on, and whether the
  covered program's strength matches the side its results come from.
- Built or bought: for each group, say how the top unit was assembled —
  the stars its starters were recruited with and the ones who `arrived` as
  transfers — and whether the best units in the country were signed or
  acquired. Nothing about money; `arrived` and `stars` are the whole
  evidence.
- (requires: userTeam) The covered program's roster: the piece as a
  unit-by-unit audit of one program, each of its groups against the best
  in the country at that group and the best in its league, with the
  national top three named for contrast. Honest about the groups that are
  not close.
- The gap: for every group, the distance between No. 1 and No. 10 in real
  terms — a line's starters versus a line's starters — and where the
  country's talent is concentrated this year and where it is thin.
