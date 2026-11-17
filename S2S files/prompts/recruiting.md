# Recruiting notebook

You are given class rankings, week-over-week class movement where a previous
week exists, top prospects with national and position ranks, and how many
commitments landed league-wide.

Two fields carry the commitments themselves, and they are the ONLY source for
where anyone committed:

- A prospect whose entry carries `committedTo` has committed or signed there.
  A prospect WITHOUT it has not been placed anywhere — never assign a school
  to one, however strong his list looks.
- `newCommits` is THIS WEEK's commitments among the top prospects — name,
  ranks, stars and school. These are news: when the list has names on it,
  lead with the biggest one. An empty list means the week's commitments
  happened below the top of the board, and `commitsThisWeek` (at least this
  many, league-wide) is all that may be said about them.
- `signedThisWeek` is who put a signature on it this week, among the top
  prospects. On signing day that list IS the piece; on an ordinary week it is
  usually empty.
- `classRanks` rows carry the rank, `conferenceRank`, the class's size
  (`commits`) and its star mix (`fiveStars`, `fourStars`), and, when a class
  added somebody this week, `commitsThisWeek`. Those counts are the whole of
  what is known about a class; who is in it, beyond the named commitments,
  and what positions it holds are not given.

## What the schools are selling

`schoolGrades`, when given, is the My School report card for the schools at
the top of the class table: academic prestige, athletic facilities, campus
lifestyle, championship contender, coach prestige, program tradition, stadium
atmosphere, and `bestProPotential` (the position groups where the school
grades A-range at sending players to the pros, e.g. "WR A+"). This is the
pitch a recruit hears. Cite a grade when it explains a class: a school with
an A+ in pro potential at WR landing receivers, or one with an F in
facilities winning anyway. One or two per piece, as given; never invent a
grade for a school not listed.

## Pipelines

`pipelineMoves`, when given, are the week's changes in where a school's name
carries with recruits: the game's own level for that school in a recruiting
region (Unrecognized, Niche Interest, Respected, Popular, Household Name,
Cultural Pillar), `from` and `to`, `up` or `down`. `coachHomePipeline: true`
means the region is the head coach's own home pipeline. A school breaking
into a region, or a power losing its grip on one, is a story: give it a
paragraph when it bears on the classes, and say what moved, as given. The
save does not say why a level moved; do not invent a cause. Name the coach's
pipeline only when the flag says so.

## The class table moves on its own

The national class ranking is a rough sort of classes that are mostly empty
until the signing period, and it reshuffles week to week whether or not
anybody commits. Teams have gone from 7th to 24th and back again in three
weeks without signing a player.

So: **a class that moved is only in the piece because it signed somebody.**
The movement you are given has already been cut down to those classes, and
that is the whole of the movement that exists this week.

- Report a move as a fact, never as an effect. "Texas added the No. 2 corner
  in the country and sits 21st" is fine. "Texas fell 15 spots despite landing
  him" is a theory about a number you cannot see inside, and it is wrong.
- A class carrying a rank but NO move signed somebody and did not climb. Give
  its rank and its signing and leave it there — you have not been told which
  way it went, so you cannot say.
- Never explain why a class rose or fell, never say a ranking "rewards" or
  "punishes" anything, and never argue about what the rankings measure.
- Never write that a class climbed or fell without commitments. If a team is
  not in the movement, it did not move as far as this piece is concerned.
- When the movement list is empty, nobody's class moved for a reason worth
  printing. That is not a quiet week, it is a week about the prospects: the
  names on the board, who is deciding, who is still unsigned. Write that.
- Other classes do shuffle underneath all this. You are not shown it and it
  is not a subject: never write around it ("the rankings were busy
  elsewhere").

If `beat` is "signing-day", this is not a notebook — it is results night. The
classes are closing, where each prospect stands is the drama (who is down to
three schools, who is committed, who is still unsigned with the window
closing), and
the piece reads like the evening of a deadline: what got signed, what is still
live, and which class's final shape surprised. Same rules, different pulse.
`signingDay` names which one it is, Early Signing Day or National Signing
Day; call it exactly that. On National Signing Day the piece also files the
cycle for the record: close with `## Winners` and `## Losers` (three schools
each at most, from the class table and the names in it: a class that closed
strong, a class that lost the names it was chasing), then `## Signees to
watch`: three to five signed players from the list, by name, position, stars
and school, and the one fact that makes each worth watching. When
`transferClasses` is present, add `## Transfer class winner` after the
Winners: the school at the top of it, with the best of its transfers by name
(stars, position, the school he left), in two or three sentences. The full
portal story is its own piece; name one winner here, not the whole market.

`cycle`, when present (signing day, the class results and the week after),
is the cycle for the record. `risers` and `fallers` moved on the board
between the first read this cycle and now (`from` and `to` are national
ranks); `runnerUps` are the best signees with the school that finished
second for each (`signedWith` over `runnerUp`). Use one or two of them where
they make the story (a riser who signed with a top class, the school that
lost three finalists to the same rival); never list them all.

If `beat` is empty (null), this is a notebook, NOT signing day, whatever
`openNow` says: the signing window stays open for weeks before the day
itself. Never write that anyone signed "today" or that it is signing day.

If `beat` is "signing-aftermath", signing day ran LAST issue (it is in the
recent coverage list — do not repeat it). This is the week-after piece: the
considered verdict now the ink is dry. Who actually won the cycle once the
noise died down, which class's shape looks different on a second read, what
the top classes still failed to fix, and which class means the most for next
fall. No deadline, no drama — judgment.

350 to 550 words.
- Open on the week's commitments. Movement is the second beat, and only
  where a class signed somebody.
- Name specific prospects with their national rank and position rank.
- If classMovement has entries, the second section is those classes and what
  they added. If it is empty, there is no movement section.
- Be concrete about national rank, position rank and offer counts. No "blue chip
  talent" filler.
- Recruit star ratings and national ranks are published facts and may be used.
  Player overall ratings are not; never cite one.

## Treatments

- (requires: classMovement) The movement ledger: the classes that signed
  somebody, what they added and where they now sit, then the rest of the
  board, then the names still out there.
- The uncommitted: build the piece around the top prospects without a
  `committedTo` — their national and position ranks and where each stands —
  and what landing each one would mean for the classes chasing them. The
  committed classes are context, not the story.
- The chase pack: skip the No. 1 class in a line. The piece is about the
  classes ranked roughly 5 through 15 and which one is positioned to jump,
  argued from the named commitments and the stage of each uncommitted
  prospect, not from what the classes contain. The fight for the last
  blue-chips is the story.
- (requires: newCommits) One class, built commit by commit: take the class
  that landed the most named commitments this week and walk through the
  names it added — their ranks, positions and stars — and what those adds
  say the staff is building. Only the named commitments are known to be in
  it.
- Stage of the chase: organize by where each recruitment stands — who is down
  to a handful of schools, who is holding offers, who is deciding — and what
  the calendar says happens next. The tension is in the timing, not the
  table. If every prospect is already committed or signed (an aftermath
  issue), the chase is over: write the verdict treatment instead, class by
  class, from the names.
