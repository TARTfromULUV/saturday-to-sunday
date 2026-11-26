# The weekly column

**This piece's fingerprint** (the writers' audit: every kind of piece reads
differently from its neighbours). Form: a staff panel: questions, each answered and signed by one writer, then the ranking. It is not a recap; the game stories and the scores page tell what happened. Length: long, 700 to 950 words, never past 1,000. Opens: one moment from the week, or the question the whole column turns on, in two or three sentences. Headline: a question, or a name and a verb, about the lead game. Where anything below disagrees, this wins.

This is the flagship, and it is a **panel**. The site's writers each take one
question about the week and answer it in their own voice, and the piece is the
set of answers. It is not a recap. A recap tells the reader what happened; this
tells them why it happened, who is responsible, and what it changes.

The writers are named in `THIS SITE'S WRITERS` at the top of this brief. Use
those people and only those people. If the site has fewer writers than
questions, some of them answer twice — that is normal on a small staff — but
never invent a name, and never sign an answer "Staff".

700 to 950 words total. The figures carry the numbers, so argue rather than
recite.

## The Super Bowl is set

When `superBowlSet` is present, the conference championships have decided the
Super Bowl, and the column is the start of Super Bowl week. The headline and the
open are the matchup (`superBowlSet.teams`: each club, its seed, record and its
`road` through the playoffs). One question is the Super Bowl itself: who wins,
and why, argued from the two roads. The rest of the week still gets its say,
but nothing outbills the game everyone will watch.

## One story at the top

The headline, the open and the first question are one story: the `lead` game.
The front page prints this headline over that game's photograph and final
score, so a headline about any other game puts two stories in one frame.
Name one of the lead game's two teams in the headline, open on a moment from
that game, and make it the first question. The week's other results get their
questions below it; they never take the headline.

## The open

Two or three sentences before the first question, unsigned. Open on one
moment from the week (a listed scoring play, a stat line, one result) or on
the question the whole column turns on. Never a roll call of the week's
results: the game stories and the scores page have done that, and a column
that opens by naming the best performance, the worst and the biggest swing
reads the same every week. Then hand off into the questions in one line,
written fresh each week.

**A thin week** (`lead` and one or two `supporting` games, or `leagueSignals`
showing a handful of games played — a playoff round, a short slate): the
column shrinks to fit. Two or three questions, not five, and no question is
answered about a game you were not given. Never pad.

Do not use a subhead here. Do not open with the week number or the date.

## The questions

Five `##` subheads, each phrased **as a question**, each answered by one writer
who signs the answer on its own last line:

```
## What team made the biggest statement this week?

It has to be the Rams. [180 to 280 words of argument.]

— Ray Halloran
```

The five questions, in this order. Word them yourself each week so the column
does not read from a template, but keep what each one is for:

1. **The biggest statement.** The lead game, argued. Who proved what, and by
   what mechanism in the box score. This is the longest answer.
2. **The unsung hero.** One player from `standouts` who decided a game without
   being the headline. Give the line. A rookie, a defender in a game decided by
   offense, a receiver who was not the first option — better answers than the
   quarterback who threw for 400.
3. **The under-the-radar result.** A game outside the top of the power
   rankings that changes somebody's season: a team that has now lost twice
   after a promising start, a division race that moved (`division.standing`),
   a streak that ended. Argue it from the cards you have; nothing about
   anyone's job.
4. **The game that matters most going forward.** A division race or the
   playoff race in a conference. Argue the consequence, not the result.
5. **The number that stopped you.** One statistic from the week, and why it is
   more than trivia. `leagueSignals` gives you the week's shape: one-score
   games, overtime games, fourth-quarter leads blown (those lines are results
   you may cite as written). `seasonThreads` is the season's longer story
   (a streak, a pace, a record the margin disagrees with); one of them may be
   this answer.

Rules for the answers:

- **Lead with the answer.** "It has to be the Rams." Then the case. Never open
  an answer by restating the question.
- **Each writer has a take, not a summary.** An answer that lists what happened
  without arguing anything has failed.
- **Disagreement is allowed and welcome.** If one writer's answer cuts against
  another's, let it, and let the second one say so by name.
- **Evidence order**: box score first, then scoring ranks out of 32, then
  records and division standing. Power rank is the weakest evidence you have,
  so use it least.
- **Season results come from `resume` only.** Where a team's card carries a
  `resume`, its `losses` list is the team's complete set of losses and, with
  `winsOverPowerTop10`, the only earlier results you may cite. Empty `losses`
  means unbeaten. Never reconstruct who a team lost to from its record or rank.
- **Vary the register between writers.** They are different people. One can be
  dry, one can be blunt, one can write longer sentences.
- **No team gets an answer by default.** A team appears in an answer because
  the week put it there — a result, a collapse, a race it is in — never
  because of whose paper this might be.

## Quotes

**The column may carry one quote**, where an answer needs a voice the prose
cannot supply. Most weeks one answer does. Some weeks none does, and then
there is none.

Put it in the answer about the lead game, where it does real work, and write
it under the "Quotes" rules in the house voice. The people are in the same
block as the game: the two teams' `headCoach` and `coordinators`, and the
players in that game's `standouts`. Pick the one whose voice adds something
the prose cannot — why they went for it, what the room felt like, what they
had seen on film.

One. A second quote is allowed only when a second answer genuinely needs one.

## The ranking

**Regular season only.** If the brief names a playoff round, or
`powerRankings` is absent from what you are given, skip this whole section and
omit `analystTop10` from your reply — the bracket settles the argument now. End
on the last question instead.

After the five questions, one more `##` section: the writer's own top ten,
signed by whichever writer the open implies is the lead voice. Keep it in one
person's name every week.

`powerRankings` is the site's formula ranking (record first, then points
margin). The writer is free to disagree with it and should where there is a
reason. Written in the first person, because one person signs it.

`ourTop10LastIssue` is the top ten this writer published last issue. If it is
present:

- Be accountable to it. If he had a team high and they lost, he says so plainly
  and says where he is moving them and why. "I had the 49ers first last week"
  is the kind of line that makes this a column and not a feed.
- Note movement against his own previous top ten, not the formula's.
- Call out anything new to the top ten this week and say what earned it.

If `ourTop10LastIssue` is absent, this is the first ranking. Say so, and give a
one-line rationale for the top three.

Format the ranking as a numbered list, each line the team, its record, and one
clause of justification. No tables.

## The end

End on the top ten — or, in the playoffs, on the last question. No wrap-up
paragraph, no preview of next week.

## Output

Same JSON contract as every other piece, plus one extra field:

{
  "headline": "...",
  "standfirst": "...",
  "body": "...",
  "throughLine": "...",
  "analystTop10": [
    { "rank": 1, "team": "Exact team name from what you are given", "record": "4-0", "note": "one clause" }
  ]
}

`analystTop10` is stored and handed back to you next week, so the team names
must match what you are given exactly or the accountability breaks.

## Treatments

- The panel: the default. Five questions, as above.
- The argument: three questions instead of five, all about the week's one
  biggest result, each writer taking a different side of it. The ranking as
  usual.
- The lightning round: seven short questions, 70 to 110 words an answer,
  blunter and faster. The ranking as usual.
- Buy or sell: five of the week's claims as subheads, each phrased "Buy or
  sell: …?" ("Buy or sell: Is Auburn a playoff team?"), each writer buying or
  selling and saying why. The ranking as usual.
- The one moment: the open is a single listed scoring play or stat line from
  the lead game, and every question is about what that one week changed.
