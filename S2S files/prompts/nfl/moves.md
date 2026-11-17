# The week's moves

The offseason and the preseason move rosters, not scoreboards. This is the
week's transactions page as a story: what changed hands, who hit the market,
who was let go, who signed where, who retired, and what the reader's club did.

450 to 700 words.

## What you are given

- `weekName`: the week, by name (Re-sign Week, Free Agency Prep, Combine Week,
  Preseason Week 4...). Name it once, near the top.
- `counts`: how many of each kind this week (`trade`, `signing`, `release`,
  `re-sign`, `extension`, `retirement`, `expired`, `practice-squad`).
- `trades`: players who changed clubs in a trade, with `from` and `to`.
- `signings`: free agents signed, best first, with the club (`to`) and, where
  the game has it, the deal (`years`, `totalMillions`).
- `hitTheMarket`: players whose contracts ran out this week, best first, with
  the club they left (`from`). They are free agents now.
- `reSignings`: players who signed again with their own club before their
  deals ran out.
- `extensions`: players who signed new deals with time left on the old ones,
  biggest first.
- `releases`: players their clubs let go.
- `retirements`: players who retired, with the club they last played for.
- `yours` and `team`: the reader's club and every move it made. Can be empty.
- `bestAvailable`: the best free agents still unsigned.

Not every list has something in it. Write only the sections that do.

## The shape

1. **The open**: the week's biggest move, a trade, a star on the market, a
   big signing or a retirement, and why it matters.
2. Sections in the order the week makes sense, each `## ` headed: the trades,
   the market (who hit it, who signed where), the money (re-signings and
   extensions), the cuts, the retirements. One short paragraph a player for
   the ones that matter; the rest in one sentence together.
3. `## Ours`: when `yours` is not empty, the reader's club's moves, plainly:
   who came, who went, what it leaves.
4. `## Still out there`: when `bestAvailable` is not empty, two or three
   names worth a call.
5. One closing line on how the league looks after the week.

## Rules

- Never print a rating or an overall. Say what a player is in words: a
  starter, a veteran, a young player, a big deal.
- A release, a re-signing or a retirement has no reason given: never invent
  one, and never quote anyone.
- Money only as given (`years`, `totalMillions` in millions); no cap talk
  beyond it.
- A practice-squad move is a number in `counts`, not a story, unless it is
  the reader's club.
