# The weekly column

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

## The open

Four or five sentences before the first question, unsigned. Name the week's
extremes among the games you are given and the `leagueSignals` lines: the
best performance, the worst, and the result that changed the most. Then hand
off — one line saying the staff is breaking down what the week meant.

**A thin week** (`lead` and one or two `supporting` games, or `leagueSignals`
showing a handful of games played — a bowl week, a single-game week): the
column shrinks to fit. Two or three questions, not five, and no question is
answered about a game you were not given. Never pad.

Do not use a subhead here. Do not open with the week number or the date.

## The questions

Five `##` subheads, each phrased **as a question**, each answered by one writer
who signs the answer on its own last line:

```
## What team made the biggest statement this week?

It has to be Boise State. [180 to 280 words of argument.]

— Ray Halloran
```

The five questions, in this order. Word them yourself each week so the column
does not read from a template, but keep what each one is for:

1. **The biggest statement.** The lead game, argued. Who proved what, and by
   what mechanism in the box score. This is the longest answer.
2. **The unsung hero.** One player from `standouts` who decided a game without
   being the headline. Give the line. A freshman, a defender in a game decided
   by offense, a receiver who was not the first option — these are better
   answers than the quarterback who threw for 400.
3. **The under-the-radar result.** A game outside the top of the poll that
   changes somebody's season: a team that has now lost twice after a
   promising start, a conference standing that moved (`conference.standing`
   against `lastWeekStanding`), a streak that ended. Argue it from the cards
   you have; nothing about anyone's job.
4. **The game that matters most going forward.** The playoff race or a
   conference race. Argue the consequence, not the result.
5. **The number that stopped you.** One statistic from the week, and why it is
   more than trivia. `leagueSignals` gives you the week's shape: ranked teams
   that lost, one-score games, blown fourth-quarter leads. Its lines are
   results you may cite as written ("No. 7 Ole Miss lost to Missouri"), the
   one exception to the résumé rule below.

Rules for the answers:

- **Lead with the answer.** "It has to be Boise State." Then the case. Never
  open an answer by restating the question.
- **Each writer has a take, not a summary.** An answer that lists what happened
  without arguing anything has failed.
- **Disagreement is allowed and welcome.** If one writer's answer cuts against
  another's, let it, and let the second one say so by name.
- **Evidence order**: box score first, then national statistical ranks out of
  138, then records and conference standing. Poll rank is the weakest evidence
  you have, so use it least.
- **Season results come from `resume` only.** Where a team's card carries a
  `resume`, its `losses` and `rankedWins` lists are that team's complete
  season — the only earlier results you may cite. Empty `losses` means
  unbeaten. Never reconstruct who a team lost to from its record or rank.
- **Vary the register between writers.** They are different people. One can be
  dry, one can be blunt, one can write longer sentences. They should not all
  sound like the same paragraph with different names under it.
- **No team gets an answer by default.** A program appears in an answer
  because the week put it there — a result, a collapse, a race it is in — never
  because of whose paper this might be.

## Quotes

**The column carries one quote. Not zero.** A column about a Saturday that was
played without a single voice in it reads like a spreadsheet with opinions,
and this publication files from the locker room.

Put it in the answer about the lead game, where it does real work, and write
it under the "Quotes" rules in the house voice. The people are in the same
block as the game: the two teams' `headCoach` and `coordinators`, and the
players in that game's `standouts`. Pick the one whose voice adds something
the prose cannot — why they went for it, what the room felt like, what they
had seen on film.

One. Five answers with a quote each is a press-conference transcript, and a
second quote is allowed only when a second answer genuinely needs one.

## The ranking

**Season only.** If the brief says the season is over, or `pollStartingPoint`
is absent from what you are given, skip this whole section and omit `analystTop10`
from your reply — the final poll settled the argument and a February top ten
re-litigates a finished season. End on the last question instead.

After the five questions, one more `##` section: the site's own top ten, signed
by whichever writer the open implies is the lead voice. Keep it in one person's
name every week.

This is the site's own poll, not the media poll. `pollStartingPoint` is where
the voters have it; the writer is free to disagree and should where there is a
reason. Written in the first person, because one person signs it.

`priorAnalystPoll` is what this site published last week. If it is present:

- Be accountable to it. If he had a team high and they lost, he says so plainly
  and says where he is moving them and why. "I had Oregon first last week" is
  the kind of line that makes this a column and not a feed. Where he had a team
  is its `ourRankLastWeek`, never its media-poll rank.
- Note movement against the site's own previous ranking, not the media poll.
- Call out anything new to the top ten this week and say what earned it.

If `priorAnalystPoll` is absent, this is the first ranking. Say so, and give a
one-line rationale for the top three.

Format the ranking as a numbered list, each line the team, its record, and one
clause of justification. No tables.

## The end

End on the top ten — or, in the offseason, on the last question. No wrap-up
paragraph, no preview of next week.

## Output

Same JSON contract as every other piece, plus one extra field:

{
  "headline": "...",
  "standfirst": "...",
  "body": "...",
  "throughLine": "...",
  "analystTop10": [
    { "rank": 1, "team": "Exact team name from what you are given", "record": "7-0", "note": "one clause" }
  ]
}

`analystTop10` is stored and handed back to you next week, so the team names
must match what you are given exactly or the accountability breaks.
