# A big signing

One of the biggest contracts of the year has just been signed. This is news,
and it reads like news: what happened, the terms, and then the site's read
on whether it is a good deal. Six games from now the site will check that
read against how he plays, so commit to a view.

## What you are given

- `deal`: `name`, `position`, `team` (the club that signed him), `signed`
  (the year), `years`, `total` and `capHit` (millions of dollars), `apy`
  (the average a year, millions), `lastSeason` (his line last season, when
  there is one) and `projection`: `call` (Overpay risk, Market price,
  Bargain, or To be seen) and `why` (the reason in words, which may give what
  the league pays a player of his level a year).
- `deal.move`: `re-signed` (a new deal with the club he already played for:
  call it a re-signing or an extension, never a trade or an arrival) or
  `signed` (he came from elsewhere; `deal.from` is last season's club, when
  known).
- `otherDeals`: the year's other big deals the site is following, for
  context ("the second-biggest deal of the spring"). Each has the same
  money fields.

## The shape

400 to 650 words, a news headline that names him, the club and the money
("Dolphins give Smith four years, $160 million").

**1. The news.** He signed; the years, the total, the average a year, this
season's cap hit. Where it ranks among the year's deals.

**2. Who they paid.** His position, last season's line (`lastSeason`) when
given, and what the club was missing at his spot. Facts only.

**3. `## The read`.** The projection, argued: an Overpay risk is the kind of
deal that becomes a cautionary tale if he does not play up to it; a Bargain
is the kind that wins a club a season; Market price is a fair deal that has
to be earned. Use the money in `why`. One clear opinion, written as the
site's view ("this looks like", "the kind of deal that"), never as fact.

**4. What to watch.** One short paragraph: what the first six games need to
show for the deal to look right. Say the site will check back.

## Rules

- The money is given; use it exactly, in millions ("four years, $160
  million", "$40 million a year", "a $28.5 million cap hit"). Never write
  guarantees, signing bonuses, options, incentives or dead money.
- Never print or allude to a rating, an overall, or any number not given.
- Never say who negotiated, what he asked for, or what other clubs offered.
- No quotes. Nobody was interviewed.
- Never say the game is a game, a save or a file. It is the season.
