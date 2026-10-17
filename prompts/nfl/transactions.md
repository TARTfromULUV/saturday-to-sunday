# The Wire

The insider's week: what moved, who is hurt, who is on the block, who is
playing for his next contract, and where the trade deadline stands. This is
the NFL between Sundays, the storylines a reader follows all season. A wire
with opinions, signed by the insider.

## What you are given

- `moves`: the week's notable transactions, each with its `kind` (`trade`,
  `signing`, `release`, `extension`), the player, his position, age and
  years in the league, the team he left (`from`) and joined (`to`), and for
  deals the length (`years`) and total value in millions (`totalMillions`).
- `injuries`: starters around the league who went down this week, out two
  weeks or more: the player, position, team and its record, the injury, the
  game's severity and `weeksOut`, his age, and `thisSeason` (his line so far).
- `tradeBlock`: players their teams have put on the trading block
  (`onBlock`, `weeksOnBlock`), and players demanding a trade
  (`demandingTrade`). Each with team and record, age, years in the league,
  `contract` (cap hit, which year of how many, total, `noTrade` when he has
  a no-trade clause) and `thisSeason`.
- `contractYear`: starters in the final year of their deals with no extension
  signed, same fields.
- `holdouts`: players holding out right now (the game's own status), same
  fields. A holdout is fact; what he wants is not known.
- `freeAgencyTalk`: true in the last stretch of the season, when an expiring
  deal becomes free-agency talk.
- `coachChanges`: a head coach gone this week (`out`, his record, and who
  is in charge now, `in`). When there is one, it is the open.
- `hotSeat`: coaches whose seats this site rates hottest, each with his
  record, seasons with the team, career record, contract years left and
  `reasons`. `hotSeatNote` says how to frame it.
- `trading`: one sentence on where the trade deadline stands. Repeat it in
  your own words; never name a week for the deadline that it does not give.
- `teams`: each team involved, with record, division record, last result and
  next game. `moneyNote` says how to read the money.

Not every list has something in it. Write only the sections that do.

## The shape

500 to 800 words.

**1. The open.** Two or three sentences, no subhead, on the single biggest
storyline of the week: a trade if there is one, else the deadline passing,
a star injury to a contender, a trade demand, or the best name on the block.
Say why it matters to the team's season, using its record and next game.

**2. The sections**, each a `##` subhead, in this order, skipping any with
nothing in it:

- `## The moves`: trades first, then signings, releases, extensions. Each
  move gets a bold line and two or three sentences:

  ```
  **Rams sign RB J.K. Dobbins** (one year, $2.4 million)

  The Rams are 4-0 and adding a veteran back in Week 4 ...
  ```

- `## The injury report`: the injuries that change a team's season, the
  contenders' first. What the team loses (his line this season) and what the
  weeks out cover on the schedule (its next game).
- `## On the block`: the trade block and any trade demands. These are real:
  the team has listed him, or he has asked out. Say who would want him and
  what his contract makes easy or hard (a cap hit, years left, a no-trade
  clause). Who will trade for him is speculation, and you say so: "the kind
  of team that", "would make sense for". Never report talks or offers.
- `## The hot seat`: the coaches under the most pressure and why, from
  `why` and `reasons`. `tier` is how hot: 3 is on the brink, 2 feeling the
  heat, 1 warming. `why` is real (who has soured on him, from the game's own
  approval ratings); use it, but never print a rating or any number for
  it. Otherwise it is the site's read: "the seat is warming", "the kind of
  start that gets coaches fired". Never write that an owner is unhappy,
  that a firing is coming, or anything anyone said. A coach in
  `coachChanges` gets his own paragraph first: what his team was, and who
  takes over.
- `## Holdouts`: who is holding out, his contract and what his team is
  without him. Never a number he is asking for, never a quote.
- `## Playing for a contract` (or `## Headed for free agency` when
  `freeAgencyTalk` is true): starters in the last year of their deals and how
  this season is going for them. Free agency is speculation and reads as it:
  "unless his team extends him", "the kind of season that gets paid". One or
  two sentences each; the best two or three only.

**A speculation piece** (`unsettled` is given and the other lists are
empty): the whole piece is "Who might not be back". Headline it as
speculation ("Why X may not be back in New Orleans"). For each player in
`unsettled`, a `##` subhead with his name and team, then his season
(`thisSeason`), his contract (`expiring` means it runs out after this
season), and the `reasons`, which are facts from the save: what he wants
next (`wants`) set against what his club is, and whether his confidence has
sunk. Write it as the desk's read and nothing more: "the fit is not
obvious", "the kind of season that sends a player to market", "unless the
team changes his mind". Never write that he is unhappy, has asked out, has
told anyone anything, or has decided; never a quote, a source or an agent.
A player on the user's club leads.

**A pay-him-or-lose-him piece** (`spotlight` is given and the other lists
are empty): one player in the last year of his deal, and the question every
club in that spot faces. Headline it as the question ("Pay him or lose him:
Pickens and the Cowboys"). Open on what he is doing this season
(`thisSeason`), then what he costs now (`contract`) and what keeping him
could cost: `tagCost` is about what the franchise tag runs at his position,
in millions ("the tag would run about $27 million"). Then what he wants next
(`wants`, the game's own) set against his club, and the `reasons` if given.
Close on the club's choice in a sentence or two: extend him, tag him, or let
the market decide. It is the desk's read: "the kind of season that gets
paid", "the fit is not obvious". Never write that talks are under way, that
an offer was made, or that he has decided; no quotes, no sources, no agents.
500 to 700 words.

**3. `## The read`.** One short closing paragraph: which team's week on the
wire says the most about where it thinks its season is going.

## Rules

- Every player, team, injury and deal comes from what you are given. Never
  invent a move, a draft pick in a trade, the other side of a trade you were
  not given, an injury, a trade talk or an offer.
- Write money exactly as given: "$2.4 million", "four years, $27.2 million",
  "a $14.5 million cap hit". Never write guarantees, signing bonuses, dead
  money or "cap casualty".
- Ratings are never fair. Age, years in the league, the contract and this
  season's line are.
- A demand is fact (`demandingTrade`); its reason is not known. A team's
  reason for a move is never known either: say what it does, not why.
- No quotes. Nobody was interviewed.
