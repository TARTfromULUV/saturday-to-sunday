# The preseason log

Preseason Weeks 2 and 3, in the column's slot. One running piece, kept
through camp, revised each week: what camp has shown so far. It is not a
fresh column. It is last week's log, brought up to date.

700 to 1,000 words.

## Last week's log

`previousLog` is last week's edition: `weekName`, `headline`, and its full
`text`. When it is there:

- **Keep its shape and carry it forward.** The same sections, in the same
  order. Keep what is still true, in a line where nothing changed ("Still
  Smith at left tackle"). Rewrite what this week changed, and say it changed
  ("Last week we had Jones ahead at corner. Not any more.").
- Do not copy last week's sentences. Every paragraph is rewritten for this
  week, even where the facts held.
- Drop what has gone stale. Lead with what moved most this week.
- `twoWeeksBack`, when there, is the edition before that, by headline: name
  a turn that has now run two weeks if it matters.

When `previousLog` is null this is the first edition: write it from this
week's facts, and `outlookHeadlines` (the Week 1 outlook's pieces) say what
the league was argued to be before camp.

## This week's facts

Everything below is measured against `comparedWith` (the preseason week of
the last camp read).

- `depthChanges`: every change on a club's depth chart since then. `kind` is
  `new-starter` (a new first name at the position: `newStarter`, and
  `replaced` with what became of him, `now`), `reordered` (the same names,
  a new order: `moverUp`), or `new-name` (someone new in the top of the chart:
  `entered`, `dropped`). `before` and `after` are the chart then and now.
  `contested` is true when the man who lost his place is still on the roster
  and healthy, which is what a position battle is. `newStarterImproved` means
  the new man's ratings rose since. `yours` marks the reader's club.
- `lastWeeksBattles`: the battles last week's log reported, followed into
  this week: `state` is `held` (the chart did not move), `still moving below
  the starter`, `changed again`, or `flipped back`.
- `risers`, `sliders`: the players whose ratings moved most since then:
  `direction`, `size` (`slight`, `clear`, `big`), `listed` (his chart spot),
  `whatMoved` (the ratings that moved, in words) when the progression run was
  read this week. `breakout` marks a riser who also climbed the chart.
- `rookieCamp`: the rookies: `drafted`, `listed` now, `chart` (how his spot
  changed), `ratings` (up or down).
- `newInjuries`: hurt since then, with `wasListed` (his chart spot).
- `rosterTrend`: the clubs whose rosters came out of the week `stronger` and
  `weaker`.
- `progressionRun`: when the league's progression run was read this week,
  the clubs most and least improved by it. It is part of this log this week:
  Progression Day does not run beside it.

## Structure

The first edition sets the sections; later editions keep them.

1. **The open**, unsigned, two to four sentences: the week's biggest turn.
2. `## The battles`: from `depthChanges` and `lastWeeksBattles` only.
3. `## Who took a step`: the breakouts first, then the risers; the sliders
   honestly.
4. `## Rookie camp`.
5. `## The injury report`: `newInjuries`, and what each does to his chart.
6. `## Around the league`: the clubs trending up and down, the team outlooks.
7. `## Ours`: the reader's club (`userTeam`), every change that touches it.
8. One closing line: what next week settles.

## Position battles: the facts only

A battle is written only from `depthChanges` and `lastWeeksBattles`. A
change that is not `contested` (the man was hurt, cut, traded) is a change,
not a battle won: say what happened. Never write a battle the charts do not
show, never name a "competition" at a position with no change, and never
say who "will" win one. No coach decided anything you were told about: the
chart moved, and that is all you know.

## Rules

Preseason games do not count: never a record, a streak or a result. No
clinching, no paths. No ratings or overall numbers: a rise is said in words
("quicker", "a clear step up"). No quotes. Never invent a player, a move or
an injury.
