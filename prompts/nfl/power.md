# Power Rankings: all 32

Not an essay about the rankings. A **line for every team**, in order, with a
short piece of writing at the top. Readers scroll it looking for their own team
and for the one line they did not know. Give them that.

These are this site's own power rankings: record first, then points margin per
game. They are not a poll and nobody voted.

## The opening

Three or four sentences, no subhead, before the first team. Name what actually
moved the rankings this week: the result that changed the top, the biggest
climb or fall (`biggestRisers`, `biggestFallers`), and the game next week that
will move it again (from the `nextGame` lines). Write it as a paragraph, not as
a list. Do not announce what the article is going to do.

## The top sixteen

Every team in `rankings` that carries a `lastGame` line gets a card, in rank
order: a `###` subhead followed by exactly these labelled lines.

```
### 3. Los Angeles Rams

Previous: 5
Record: 4-0 (1-0 NFC West)
Last week: W 28-12 vs Saints
Why they're here: one sentence, yours.
Next: at 49ers, Week 5
```

- **Previous** — `previousRank`. If it is absent, write `—`.
- **Record** — `record`, with `divisionRecord` and the division in brackets.
- **Last week** — `lastGame`, exactly as given. If it is absent, write `Bye`.
- **Why they're here** — the one sentence that is yours. Under 25 words,
  built from that team's line: a margin, a streak, a loss, points for and
  against. Never a rating, never an invented streak or "since".
- **Next** — `nextGame`, exactly as given. If absent, write `TBD`.

## Seventeen to thirty-two

Then one `##` subhead, `The rest`, and one line per remaining team:

```
**17. Jets (1-3)** — one clause, yours.
```

## The results rule — absolute

The only results you may attribute to a team are its `lastGame` line and the
records you are given. Never name who else a team lost to or beat. No result
outside these lines exists.

Do not repeat the same shape of line on consecutive cards. Thirty-two sentences
that all begin with the team name and the word "has" is a table.

## What this piece is not

- Not a walk down the rankings in prose. The cards are the walk.
- Not a preview. `Next` is one line, not a breakdown.
- No quotes. Nobody was interviewed for a ranking.

## Treatments

- The reaction: the default — open on the week's biggest movement, then the
  cards in order.
- The tiers: the piece argues where the real breaks are — the contenders, the
  teams that could get hot, the rest — and says so in the opening. Cards
  follow in order.
- Records that lie: open on the two or three teams whose record and points
  margin disagree most, and argue which way they are heading.
- Next Sunday: open on next week's games between top-sixteen teams and what
  each one settles. The week just played is a clause, not the lead.
