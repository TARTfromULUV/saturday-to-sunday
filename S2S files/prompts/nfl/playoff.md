# The playoff picture

Who is in, who is out, and what decides it — for both conferences. This piece
runs from mid-season on, and in the playoffs.

## What you are given

For the AFC and the NFC: `seeds`, seven teams as it stands (seeds 1-4 are the
division leaders, 5-7 the wild cards), and `inTheHunt`, the next teams out.
Each carries its record, division, point differential, `gamesLeft` and
`opponentsCombinedRecord` (how hard the rest of the schedule is), and `status`
when the game has flagged a clinch or an elimination.

`seedingNote` explains how the seeds were set. **They are a projection, not the
official order**: say "as it stands", "if the season ended today", "projects
as the 5 seed". Never present a seed as clinched unless `status` says so, and
never explain a tiebreaker beyond record and point differential.

In the playoffs (`roundJustPlayed` present) you are also given `results`, the
round just played, and `nextRound`, the games still to come. The round names in
the brief's round line are the only names you use.

## The shape

600 to 850 words.

**1. The open.** Three or four paragraphs, no subhead. The race's big idea this
week: the top seed and the bye, the division that will send one team or three,
the wild-card line and who is sitting on it. Take a position.

**2. `## AFC` and `## NFC`.** For each conference:

- The seeds as a numbered list, one line each: seed, team, record, and one
  clause of yours on what keeps them there.
- Then two or three paragraphs on the race: where the line is, which teams in
  `inTheHunt` can get there, and why the schedule (`opponentsCombinedRecord`,
  `gamesLeft`) helps or hurts.

**3. `## The bottom line`.** One short paragraph naming the single game or
stretch that will decide the most.

**In the playoffs** the shape changes: open on the round just played (from
`results`, winner first, score as given), then one paragraph per game still
standing in `nextRound`, then the bottom line. Teams that lost are out; say so
once and move on.

## Rules

- Records, seeds and point differentials only as given. Never compute a
  magic number, a tiebreaker or a "needs to win out".
- Results only from what you are given. Never name who a team lost to unless
  it is in front of you.
- No quotes. Nobody was interviewed.
- No percentages, no odds, no simulations.

## Treatments

- The line: the default — start at the last wild-card spot and work outward.
- The top: the race for the 1 seed and the bye leads, the wild cards follow.
- The divisions: walk the division races one by one, then what they mean for
  the wild cards.
- The schedule: lead with the teams whose remaining opponents decide their
  season, hardest and easiest.

## The last weeks: clinch scenarios

When teams carry `thisWeek` (the last four weeks of the regular season), this is
the clinch-scenarios piece, and those lines are the spine of it. `thisWeekNote`
says how to read them.

- Open on the biggest thing that can be settled this week: a division, a
  playoff spot, a season ending.
- In each conference section, after the seeds, a **`### This week`** list: one
  line per team that has a scenario, in its own words ("**Steelers**: clinch
  the AFC North with a win and a Ravens loss"). A team that is "win and in"
  says so in bold.
- Name the games that decide the most, with their `broadcast` when the brief
  gives it.
- In the final week, write it as the last Sunday: every game with something on
  it, who is playing for their season, and what the bracket looks like if the
  favourites hold.

Never write a scenario that is not given, and never explain a tiebreaker.

## The playoffs

In the playoffs, build toward the Super Bowl: fourteen became eight, eight four,
four two. Say how many wins each survivor is from a title, and end on the next
round's games and what is on them. After the Super Bowl, crown the champion
plainly.
