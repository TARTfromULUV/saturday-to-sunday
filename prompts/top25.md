# Top 25: what's next for each ranked team

This is not an essay about the poll. It is a **card for every ranked team**,
in order, and a short piece of writing at the top. Readers scroll it looking
for their own team and for the one line they did not know. Give them that.

## The opening

Three or four sentences, no subhead, before the first card. Name what actually
moved the poll this week: the result that changed the top of it, any other
upheaval worth a clause (`droppedOut` is who fell out of the poll entirely,
with the rank they held), and the game next week that will move it again
(`nextWeekHeadliners`). Write it as a paragraph, not as a list. Do not say
"let's dive in" or announce what the article is going to do.

`cards` is the whole poll with everything each card needs; `risers`,
`fallers`, `newEntries` and `droppedOut` are the week's movers pulled out of
it for the opening. `lastResultGame`, when present on a card, names the
conference championship game that result was.

## The cards

Then every team in `cards`, in rank order, one after another. Each card is a
`###` subhead followed by exactly these five labelled lines, in this order:

```
### 3. Notre Dame Fighting Irish

Previous ranking: 4
Record: 10-2
Last week: Beat No. 19 Pittsburgh 31-24
Stat to know: Notre Dame has won 12 straight.
What's next: Saturday vs. Michigan State, 7:30 PM ET, NBC
```

Rules for each line:

- **Previous ranking** — `previousRank`. If `isNewEntry`, write `Not ranked`.
- **Record** — `record`, as given.
- **Last week** — from `lastResult`. "Beat" or "Lost to", the opponent with its
  rank in front if it had one, and the score. If `lastResult` is absent the
  team was idle: write `Idle`.
- **Stat to know** — see below. This is the one line you write.
- **What's next** — from `nextGame`: the day, `vs.` for home or `at` for away,
  the opponent with its rank, then the kickoff and network from its
  `broadcast` (whatever of them it carries). If `nextGame` is absent, `noNextGame`
  says why: `season complete` means exactly that; `nothing scheduled yet`
  means the schedule has not been drawn past this point — write `TBD`, never
  `Season complete`.

Do not add lines. Do not add a paragraph of analysis under a card. Do not skip
teams. Twenty-five cards, or however many `cards` contains.

## Stat to know

The only sentence on the card that is yours, and the only place in this piece
where you can do damage. One sentence, under 25 words, and it must be built
from that team's `facts` block or from results in what you are given. Nothing else.

## The results rule — absolute

Every team's card carries `losses` (the complete list of its defeats this
season, with opponents and scores) and `rankedWins`. Those lists are the
ONLY results you may attribute to a team, anywhere in this piece, including
the opening and any argument about schedules or résumés. If `losses` is
empty, the team is unbeaten. NEVER name who a team lost to from memory or
inference — a published piece once invented two losses for a team whose real
defeats were sitting in the data, and that is the single fastest way for
this site to lose its readers. No result outside the cards exists.

`facts` gives you their win streak, their streak against ranked teams, their
current and longest home win streaks, conference and national titles, playoff
appearances, all-time weeks ranked, bowl record, their conference record, and
their national offensive and defensive ranks. Where the team was picked in
August is not given and is never cited.

Good lines do one of three things:

1. **Put a streak in context.** A nine-game winning streak is a fact; a
   nine-game winning streak against a program whose longest home run is
   nineteen is a sentence.
2. **Measure the season against the résumé.** A top-five team with no ranked
   win, or a two-loss team whose losses both came to the top five, is a story
   in one line (`rankedWins`, `losses`).
3. **Name the number behind the record.** The 4th-ranked scoring defense on a
   team whose offense sits 71st explains the whole season.

Never invent a streak, a count, an "only team in the country", a national
ranking, a first, or anything "since 2019". If you did not receive the number,
you do not have it. A card whose stat line is a plain restatement of the
team's conference record is a weak card; a card with a fabricated streak on it
is a broken publication. When a team's facts give you nothing interesting, say
something true and small rather than something impressive and invented.

Do not repeat the same shape of line on consecutive cards. Twenty-five
sentences that all begin with the team name and the word "has" is a table.

## What this piece is not

- Not a walk down the poll in prose. The cards are the walk.
- Not a place for opinion about whether the voters got it right. That argument
  belongs to the column.
- Not a preview. `What's next` is one line, not a breakdown.

## Treatments

- The reaction: the default — open on the week's biggest movement, then the
  cards in poll order.
- The line: the piece argues where the real cut is — the teams with a title
  case versus everyone else ranked below them. Put the line somewhere
  specific, defend it, and let the cards fall on either side of it.
- Records that lie: open on the two or three teams whose record and their
  underlying numbers disagree most — conference record, offense and defense
  ranks — and make the case for which ones the poll has wrong. Cards follow.
- The new blood (requires: newEntries): lead with the teams that just
  arrived or returned to the poll, and whoever left to make room
  (`droppedOut`). Who belongs, who is visiting, and what each one's next
  fortnight will prove. The established top ten gets the short end this week.
- The résumé check: open on the top ten ranked by what they have actually
  beaten — `rankedWins` and `losses` only — and name the ranked team with no
  ranked win to its name. Cards follow in poll order.
- Next Saturday: open on the ranked-against-ranked games in
  `nextWeekHeadliners` and what each one settles. The week just played is a
  clause, not the lead. Cards follow.
