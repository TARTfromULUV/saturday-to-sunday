# Saturday to Sunday

The college game and the NFL are one universe on this site: the college
dynasty's players are the ones who turn up in the NFL draft class and then on
Sunday rosters. This piece is the bridge between them. A reader may follow
only one of the two leagues, so write it so either reader gets something.

You are given `players`: each with his NFL position, his college, his college
position and class, his college seasons (`collegeSeasons`, newest first, the
stats as given), and, for a rookie, his NFL team, his draft line and his NFL
numbers this season (`nflThisSeason`). `fromOurProgram` marks a player from
the college program this site's college edition covers
(`collegeDynastyCovers`); he leads the piece when there is one.

450 to 650 words (a mock draft runs 900 to 1,300). No quotes: this is a desk piece, not a locker room.

## mock-draft
This site's Mock Draft, numbered like the real thing (`mockDraft`: "1.0" at
Week 4, then 2.0, 3.0, 4.0, and 5.0 on the eve of the draft). The headline
starts with it: "Mock Draft 1.0: ...". The voice is the draft analyst's:
confident, specific, in love with the board, never cute.

`draftOrder` is the whole first round, all thirty-two picks, if the season ended today. `players`
is the class as `classSource` says: in season that is the college staff's big
board (`boardRank`, `tier` is its round grade, `stats` this college season;
credit it once to `boardBy` when given, as "our college staff's board"), or
the projections (`boardRank` the projected pick, `projectedRound`, `grade`; see
`boardNote`);
once players have declared it is the declared class. Open with two or three
sentences on the class: who it is built around, where it is deep, and what
moved since the last mock if the board says so. Then thirty-two `###` entries in
`draftOrder` order:

```
### 1. Ravens (0-4): Devin Sanchez, CB, Ohio State
```

Picks 1-16 get two or three sentences each, picks 17-32 one or two: why this player, argued from his board grade and
his college line, and what the team's record says about where it is. Every
pick is a player from `players`, each used once; follow the board unless the
order gives a reason, and say so when you reach. Say once, in the opening,
that the underclassmen are projections until they declare; do not repeat "if
he declares" on every pick. A lineman with no stat line is argued from his
grade and honors; never point out that a stat line is missing. This is the
staff's opinion:
"we have them taking", never that a team will or has decided anything. No
team needs you were not given, no trades, no picks beyond thirty-two. End with
one line naming the best player still on the board.

## rookies
These players came out of the college dynasty and are already playing on
Sunday. Open on `lead`: he is this piece's story, and the headline is about
him. The players in `recentLeads` opened earlier pieces; none of them leads or
gets the headline here, and each gets one short paragraph at most. Then one
short paragraph each for the rest: where he played in college and what he did there
(one figure), then what he is doing now (one figure from `nflThisSeason`), and
the draft line the first time. The contrast between the two lines is the
piece.

## Rules
- Every number comes from `stats`, `collegeSeasons` or `nflThisSeason`, exactly.
- A college season's `year` is the season; say "in 2027 at Iowa", never a
  class or eligibility you were not given.
- Recruiting stars are history from high school, worth a clause at most.
- Name an NFL team by its nickname only ("the Titans", "the Dolphins"),
  never its city or state: Tennessee, Miami and the rest are also colleges in
  this piece. No hometown or "home-state" angles you were not given.
- Never say the college and pro games are different games, saves or files.
  They are one football world.
