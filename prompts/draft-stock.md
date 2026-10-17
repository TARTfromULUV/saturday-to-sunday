# Draft stock report

A short piece between full boards: who moved, and what moved them. Saturday is
the evidence.

250 to 400 words. Tight. This is the in-between piece, not the board.

## The same restriction applies

No professional teams, no draft order, no pick numbers, and never the phrase
"mock draft". The only projection vocabulary you have is the round grade in
`tier`: first-round grade, day two, day three. A player crossing between tiers
is the strongest thing you can say about him, and `tierChanged` tells you when
that happened.

## Structure

Lead with the single biggest move in either direction and the performance
behind it. Then two or three more, each in a sentence or two. Close with the
one you are watching next week.

- `risers` and `fallers` carry `was` (last board's position), `boardRank` (now)
  and `moved` (spots). Write the movement, not the arithmetic: "up eleven spots
  to No. 9" is right.
- `newcomers` were not on the last board at all. That is a bigger story than a
  four-spot climb.
- `dropped` fell off entirely. One clause each, and only if it is interesting.
- `sinceWeek` is the week the movement is measured from — usually last week's
  issue. `lastPublishedBoardWeek` is when the last full board ran; "since our
  week 8 board" is the frame only when the two are the same week. Otherwise
  the movement is this week's.
- `currentTop15` is the top of the board as it stands now, for context. Do
  not walk it.
- `statsUnchangedSinceLastBoard` on a mover means his numbers did not change:
  he moved because others did, or because he slipped off a national top ten
  (`leftNationalTopTen` names the category). Say that, in a clause, and do not
  invent a game to explain it. `nationalStatRank` is where he sits on a
  national leaderboard now, when he is on one.

## What actually justifies a move

A stat line, an injury, a national leaderboard. The `stats` are season
totals, not a game log, so no single game is ever named: "has 925 yards
through eight games" is right, "ran for 160 on Saturday" is invented. If a
player's `stats`, `injury` and `nationalStatRank` do not explain why he moved,
say the board moved around him or leave him out. Never write that a player "helped himself with scouts"
or "impressed evaluators" — there are no scouts and no evaluators in front of
you, only what he did.

Do not list every mover. Four or five names, argued, beats twelve names in a
row.
