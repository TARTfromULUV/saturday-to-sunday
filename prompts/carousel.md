# The coaching carousel

The offseason piece. Who moved, who got pushed, and what each program was
actually buying.

600 to 800 words. This runs once a year and it is one of the two or three most
read things the site publishes, so it is a column with a thesis, not a list of
transactions.

**If `live` is true, this is NOT the resolved sweep** — the carousel is still
turning, and this piece is THIS WEEK'S staff moves, breaking mid-playoffs.
450 to 650 words, written as news: who moved this week, what the school was
buying, who is out. The moves listed are the ONLY moves — never declare the
carousel finished, never total up "the cycle so far" beyond what is listed,
and never speculate about which jobs open next or who fills them. Openings
without a listed hire may be described as open, nothing more. Prior weeks'
moves may be referenced only from the recent-coverage list.

In a live piece, three fields change meaning or appear only here:

- `departures[].reason` is why the job opened, in words: `fired`, `retired`,
  `took another job`, `left for a professional job`. Use it exactly. A man
  listed as `retired` was not fired, and one with no reason is simply out; do
  not supply one. `replacedBy`, when present, is who has the job now. `nowAt`,
  when present, is where the departing man turned up the same week: a coach
  with a `nowAt` left for that job and is not out of work.
- `openJobs` — head jobs still vacant, with who left and why. Name them as
  open. Never guess who fills them.
- `programs[].thisSeason` is the record of the season still being played.

Open on the biggest head job that moved this week. Coordinator moves are a
closing section at most, and only the ones at schools a reader would know.

**If `alreadyReportedLive` is present**, this site covered these moves as news
during the bowls, under the headlines listed. The sweep is not news, then: it
is the cycle in full, with the verdicts the weekly pieces could not give.
Refer back to that coverage where it helps and never announce a hire as
breaking.

## What you have

- `hires` — every school with a new head coach. Each entry has the coach, the
  school (`to`), where he came from (`from`, with the job he held there), and
  `replaced`, the man he is following.
- `kind` on each hire says what sort of move it was:
  - `poached` — he was a head coach somewhere else. The most expensive kind.
  - `promoted` — he was a coordinator, now he runs a program.
  - `promoted-internally` — promoted from inside the same building.
  - `outside` — he did not hold one of these jobs last season.
  - `unknown` — his previous job could not be established. Say nothing about
    where he came from.
- `departures` — head coaches who left a job, with how long they had been
  there (`currentSeasonAtSchool` is the season they were in when they left).
  In the sweep, a departure with no `replacedBy` and no `nowAt` is out of
  the league.
- `coordinators` — staff moves at the schools that changed head coaches.
- `programs` — for each school involved, hiring or losing: its history
  (including `recentSeasons`, the last few seasons' records, finishes and the
  coach who had the job each year), its record, its conference, and
  `standing`, where the job ranks among the ~140 in the country by what the
  program has actually won.

`hireProfiles`, when given, says who each new head coach is as a coach: his
`archetype` (the game's word for his style: Elite Recruiter, CEO, Scheme
Guru, Program Builder and the like; say it plainly, "an elite recruiter"),
his `level`, `careerRecord` and `yearsCoaching`. Use it to say what a school
hired, not to guess at why.

## When `source` is `mydynasty`

The league runs the carousel through MyDynasty, and this is its full run for
`year`: every move is final. This is the in-depth piece, 900 to 1,300 words,
and it has more to work with:

- `departures[].reason` is why the job opened: `fired`, `contract not
  renewed`, `retired`, `left for a professional job`. Use it exactly.
  `seat` (on the brink, hot seat, warm, secure) is how safe the job was
  before he was let go. A man fired off a `secure` or `warm` seat is a
  surprise, and you may say so. `lastSeason` is his final record there.
  `nowAt`, when given, is the job he took in the same carousel.
- `hires[].contractYears` is how long the new deal runs, in years ("a
  six-year deal"); `move` says whether the job was a `step up`, `lateral` or
  `step down` for him. Contract length is the one contract term you may use;
  never money.
- `lastSeasonGrade`, on a hire or a departure, is the grade MyDynasty gave
  that coach's last season (A+ to F). Use it as a grade ("an A-minus
  season at UNLV"), never as a number, and do not explain how it is made.
- `totals` counts the whole cycle: head coaches out (fired, retired, to the
  pros), head hires, coordinator hires and departures, contract extensions.
  One paragraph on the scale of it.
- `extendedHeadCoaches` are head coaches whose schools extended them
  instead. Mention a few at big programs as the jobs that did not open.
- `followers` are players who moved or signed with their coach's new school.
  `expectedToFollow` are players lined up to follow but not moved yet: say
  they could follow, never that they have. Name the best two or three by
  position and overall.
- `grudges` are coaches who now hold one against the school that let them go.
  One line at most, and only when that school comes up.

- `formerPlayer` on a hire or coordinator, and `gaHires`, mark men who
  played in this dynasty and came up through the grad-assistant program:
  `playedAt`, `position`, and `gaClass` (the year he left school). Say it
  ("a former Rutgers center, back four years later as an offensive
  coordinator"). Never invent his playing career beyond that.
- `yourProgram` and `yourStaffMoves`: the covered program's own staff in this
  run, who left (and where to) and who came in. Give it its own paragraph,
  near the end: the reader runs that program.

Structure for this piece: the biggest job first, then the firings with their
reasons and records, the chain reactions (a poached coach leaves a job open
somewhere smaller; follow one), the promotions, the players following their
coaches, the scale in totals, and a closing judgement on the best and worst
hire.

## Structure

- **Open on the biggest move**, which means the best job that changed hands,
  not the most surprising one. Say what the school was buying and what it just
  gave up on. A program with a low `standing` number is a big job; use the
  history to say why rather than asserting it.
- **The chain reactions.** A coordinator leaving for a head job leaves a hole;
  a head coach poached from a smaller school leaves a whole program behind.
  Follow one or two of these through, because that is the part a list misses.
- **The promotions.** A coordinator getting his first program is a different
  story from a sitting head coach moving up, and the internal promotions say
  something about what the school thinks of its own building.
- **Who is out.** `departures` are people losing their jobs. Be direct about
  the record without being gleeful. If a coach had been somewhere a long time,
  that tenure is the story, and `recentSeasons` says what the end of it looked
  like.
- **The one you would bet against.** End with a judgement. You are allowed to
  say a hire is wrong, and a carousel piece with no opinion in it is a
  transactions wire.

## Rules

- These are moves that have already happened. Report them as done. Do not
  speculate about candidates, interviews, or jobs that might still open.
- No salaries, no buyouts, no contract terms. Contract length only when
  `contractYears` gives it. Never invent any of it.
- No quotes. Not from athletic directors, not from the coaches, not from
  "a source". Nobody said anything you can print.
- Program history is fair game and is the best material here. "A school with
  forty-three conference titles just hired a coordinator" is the whole story in
  one sentence. `recentSeasons` is the other half: what the last man left, in
  records.
- Where a departing coach went, and why, is given or it is not. `reason` and
  `nowAt` are the only sources; never supply a reason or a destination.

## Treatments

- The sweep: the default — the biggest move first, the chain reactions, the
  promotions, who is out, the one you would bet against.
- What they inherited: organise the piece by the jobs, not the men. For each
  school that hired, what the new man walks into, from `recentSeasons` and
  the history — a program that was 11-2 and lost its coach to a bigger job is
  a different hire from one that was 3-9 three years running. Rank the jobs
  from best inherited situation to worst, and say which hire has the least
  margin for error.
- The departures: lead with the men who are out and the records that ended
  it, each against his program's `recentSeasons` — who was fired after a
  slide, who after one bad year, who left on his own terms. The hires run
  as the second half, briefly, as the answers to each departure.
- The buyers: write it as a market. Which schools paid the most (poaching a
  sitting head coach), which promoted from within, which took a flyer on an
  outsider, and what each choice says about how the school sees itself,
  from its `standing` and history. Close on the school that got the best
  value and the one that overpaid.
- (requires: alreadyReportedLive) The verdicts: this site reported every one
  of these moves as it happened. Now rank the hires, best to worst, with the
  case for each in a paragraph, using the program's history and
  `recentSeasons` as the measure of the job and `kind` and `from` as the
  measure of the man. No recap of the news; the reader has read it.
