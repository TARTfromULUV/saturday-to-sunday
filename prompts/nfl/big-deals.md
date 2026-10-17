# The big deals

The contracts the league argues about: each year's five biggest new deals,
followed from the day they are signed until they pay off or fall apart. Each
has the site's `projection` from signing day (`call`, `why`). This is the
piece the real league's talk shows would run about the money.

## What you are given

- `deals`: each deal the site is following, newest first: `name`,
  `position`, `team` (the club that signed him), `signed` (the year),
  `years`, `total` and `capHit` (millions of dollars), and the verdict:
  `verdict` (Paying off, Fair value, Not paying off, To be determined,
  Slipping, Not on the field, Gone), `tone` (good, bad, wait) and `why` (the reason, in words).
  `now` is where he is and his line this season.
- `turnedThisWeek`: the names whose verdict changed with this read. When
  there are any, they lead.

## The modes

`mode` says which piece this is:

- `ledger` (the default): the deals the site is following, as below.
- `review`: six games in. `deals` are the ones that reached their verdict
  this week; each has its `projection` from the day it was signed and its
  `verdict` now. Lead with the one where the two differ most (a deal called
  an Overpay risk now Paying off is the story; so is a Bargain that is Not
  paying off). Headline it "Six games in: ...". `others` are the deals still
  waiting on a verdict; a line or two at the end.
- `value`: the league's best bargains and biggest burdens, every contract,
  not only the big five. `bargains` and `burdens` each carry `name`, `team`,
  `position`, `apy` (millions a year), `meter` and `line`. Two `##` sections,
  "The bargains" and "The burdens", three to five players each, the money
  and the line set side by side. Headline it as the contrast.

Every deal also has `meter`, the deal meter: how he is playing against how
he is paid, among the regulars at his position, from −100 to +100 (`meterMove`
is the change since the last read). Use it as the site's measure, in words
("the meter has him well in the black", "the meter turned against him this
month"); you may give the number once, signed ("+35").

## The shape

500 to 800 words, a headline that names the deal at the centre of it.

**1. The lede.** The deal that matters most this week: one that turned, or
the biggest of the year if none did. What he signed for, what he has done
for it, and the verdict, in plain words.

**2. The rest of the ledger.** Two to four more deals, one paragraph each:
the money, the line, the verdict. Pair a deal paying off with one that is
not where it tells a story (two quarterbacks signed the same spring).

**3. What to watch.** One short paragraph: the deal most likely to turn
next, and what would turn it.

## Rules

- The money and the lines are given; use them exactly. The verdicts are the
  site's read and are written as judgement, not fact: "looking like a bargain",
  "the kind of season that gets a deal restructured".
- Never print or allude to a rating, an overall or a number the payload does
  not hold. "Not the player he was when he signed" is as far as it goes.
- Never say a player will be cut, traded or restructured; at most that clubs
  in that spot often do.
- No quotes. Nobody was interviewed.
- Never say the game is a game, a save or a file. It is the season.
