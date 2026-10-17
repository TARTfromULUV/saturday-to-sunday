# The field

**Read `live` first. It changes what this piece is.**

## When `live` is true: the round that was just played

The playoff is under way and what you are given holds what actually happened, so this
is a report, not a projection. `round` names the round — use that name and no
other. `games` are its results with the bowl each was played in and the winner
of each. `stillAlive` is who is left, `out` is who went out this week and to
whom, `allEliminated` is everyone knocked out so far, and `nextRound` is the
matchups this produced when they are known. `nextRoundName` is always the name
of the round the winners advance to; use it exactly. When `nextRound` is null
the matchups are not set yet: say who advances to the `nextRoundName` and stop
there. When `nextRoundName` is null, this was the National Championship: the
winner is the champion and there is no next round.

400 to 600 words.

- Open on the result that reshaped the bracket most, by name and score.
- Give each game in the round a real paragraph. Where a game carries `box`,
  `quarters`, `standouts` or `namedScores`, what decided it comes from those;
  where it carries only the result, say the score, who advanced and what it
  sets up, and nothing about how it was played.
- Say what the next round now looks like, from `nextRound` only. Never invent a
  matchup, a seed line or a site.
- Close on the matchup of the next round with the most at stake.
- **Build toward the title.** Count it down: twelve became eight, eight four,
  four two. Say how many wins each survivor is from a national title, and end
  on what comes next, so the reader knows what to watch. After the National
  Championship, crown the champion plainly and say what the season was.

Hard rules for a live round:

- **A team that has been eliminated is out.** `allEliminated` is the authority,
  not the poll. A beaten team may still be ranked highly — the poll lags — and
  writing it back into the bracket is the single worst error this piece can
  make.
- Do not describe anyone as "in as the N seed" once the playoff has started.
  Seeding was settled before the first round; what matters now is who is left.
- Do not project a champion. Argue who is best positioned if you like, but the
  games are being played and you do not know.

Everything below applies only when `live` is false.

---

## When `drawn` is true: the field is set

The conference championships have been played and the game has drawn the
bracket. This is the one week the field itself is the news: `seeds` are the
twelve as seeded, `byes` the four sitting out the first round, `firstRound`
the four games as scheduled, and `firstOut` the first teams left out. Nothing
is projected and nothing is to be argued into or out of the field; the
argument is about the seeding and the draws. 500 to 800 words.

- **Open on the champions.** `championsCrowned` is every conference title
  decided this week (`game`, `champion`, `runnerUp`, `score`). These are titles
  WON: "Georgia are SEC champions", never "Georgia pulled ahead". Say which
  champions earned a place in the twelve and which titles did not carry one.
- **The field**: the four byes, then the four first-round games with their
  seeds and the quarterfinal each winner walks into (the 8/9 winner gets the
  1 seed, 7/10 the 2, 6/11 the 3, 5/12 the 4).
- **The hardest road, and the first team out**: who was left out and what it
  cost them, by name and rank from `firstOut`.
- **The bowls**: `bowls` are the other postseason games as scheduled. A short
  closing section on the best of them, by name; each carries its `broadcast`.
- Close looking ahead: twelve teams, four rounds, one title. The first round is
  next.

## When `live` is false and `drawn` is false: the projected field

The twelve-team bracket as it stands. Not the committee's list in order — the
BRACKET that list produces, which is a different argument.

You are given `seeds` (all twelve, with seed number, record, conference,
rank, and whether that team is in as a conference champion), `byes`, `firstRound`
as four matchups, `firstOut` (the next four ranked teams), `conferenceRaces`
(who currently leads each league, and `decided` when the title game has been
played), and `leapfrogs` — cases where a conference champion took a place in
the field off a team ranked above it that was left out.

`projected` tells you whether the conference races are settled. When it is true,
every "champion" here is whoever leads that table right now, and you must say so
plainly near the top. Do not present a projection as a result.

400 to 600 words.

## Structure

- Open on the bracket's sharpest edge: a bye that looks wrong, a champion
  jumping a better team, or a one-seed nobody expected. Not on the number one
  team unless the number one team IS the story.
- The byes. Four teams get two weeks off and everyone else plays in December.
  Say who and say what it is worth.
- The first round, as four games. Short reads. Name the ones that look like the
  higher seed getting a bad draw.
- The leapfrogs, if `leapfrogs` has anything in it: a champion in the field
  below a team that is out. This is the format's most argued-about feature and
  it is the section readers come for.
- Close on the first team out, and exactly what it would take.

## Rules

- Every seed, record and matchup must come from what you are given. Never reseed the
  field yourself and never invent a matchup.
- The rules that built this bracket: the five highest-ranked conference
  champions are in automatically, the field seeds 1 through 12 straight by
  ranking, the top four seeds get the byes (a champion earns a place, not a
  bye), first round is 5v12, 6v11, 7v10, 8v9 at the higher seed. Do not
  contradict them. An independent has no conference to win.
- When `projected` is true, hedge the champions and only the champions. The
  seeds and matchups are what they are.
- Do not predict scores or name a winner of the whole thing.
