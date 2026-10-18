# The athletic department's moves

The athletic director has made business calls since the last issue: a
collective launched, a local NIL partner signed, a facility approved. This is
the college money desk's news about the program, written the way a campus
beat writer covers the athletic department.

## What you are given

- `team`: the school.
- `calls`: each move, newest first. `title` names it ("Launch the Owl Nest
  Collective", "Kroger: player NIL deals", "Indoor practice facility").
  `choice` is `sign` (a deal) or `approve` (something the department pays
  for). `kind` is collective, campaign, partner, nil, facility, community, naming, fans, player, marketing, retail or merch.
  - A deal carries `years` and either `perYear` (millions of dollars a year
    to the department) or `nilPerYear` (millions a year for the players'
    name, image and likeness deals, which goes to the players, not the
    department).
  - Something approved carries `cost` (millions) and `seasons` (how long it
    takes; 0 means it starts now) and `finish` (the year it is done).
    `facility: true` marks a facility project.

### The stadium

- `kind: stadium` with `choice: approve` is a stadium phase the board
  approved: `phase` (its size, "50K"), `cost` (millions), `seasons` to build,
  and the bond that pays for most of it: `bond` (millions), `bondPerYear` over
  `bondYears`. Report the down payment as `cost` less `bond`. A groundbreaking.
- `choice: open` is the ribbon cutting: the phase is done and the stadium
  now seats `capacity`. When it is in the calls, it is the lead.
- `stadiumSpot` on a deal means the partner's name goes up in the stadium
  (`ad_boards`: a strip of the ad boards; `goal_pads`: the goal post pads).

### Naming rights

- `kind: naming` with `choice: sign` is the stadium's new name,
  `stadiumName`, for `years` at `perYear`. When it ends an earlier deal,
  `replaces` names the old name and `buyout` (millions) is what the
  department paid to leave it early. When `startsYear` is set, nothing
  changes yet: the department waited out the old deal and the new name goes
  up in that year (report it as lined up, with no buyout). A naming deal is
  the lead unless a stadium phase is in the calls.

### Player brand deals

- `kind: player` with `choice: sign` is a brand deal for one of the
  program's players that the department approved: `player` (his name),
  `brand`, `playerPay` (millions, paid to him, not the department) for
  `years`. Name the player. One short paragraph; the money is his.

### Marketing and retail

- `kind: marketing` (`choice: approve`) is the season's marketing plan:
  `planAim` (local, regional or national) and `planBudget` (thousands of
  dollars, also `cost` in millions), with the following it is expected to
  add, `followLo` to `followHi`. A sentence or two.
- `kind: retail` with `choice: approve` is a retail promotion: the program
  licensed its logo to `brand` for a `product` sold at `retailer` in
  `stores` stores for `weeks` weeks, at `price`, for a `licensingFee`
  (millions) and a `royaltyRate` on each pack. `expectedPacks` is a forecast
  range; say it as a forecast.
- `kind: retail` with `choice: result` is how it went: `packsSold`, the
  `royalty` (millions), and `homeWinWeeks`, how many weeks of the run had a
  home win. If it beat or missed the forecast, say so plainly. The fee and
  royalty go to the department.
- `kind: merch` with `choice: sign` is the merchandise distributor for
  `years` seasons: `distributor` regional or national, `perYear` its
  estimated yearly cut (millions).

### Fans

- `kind: fans` is a promotion or a campaign (`choice: approve`, `cost` in
  millions, often thousands of dollars): it runs `campaignWeeks`, and may
  carry `moodChange` (the fan base's mood) and `newFollowers` (social
  followers). One or two sentences each, near the end; never the lead
  unless it is the only call. Never claim it filled seats.

### A deal a rival took

- `choice: lost` is a deal the department let wait or expire while `rival` was
  after it, and `rival` signed it: `title`, `perYear`, `years`. One short
  paragraph: who got it and what it was worth. Never say the department regrets
  it or explain why they waited.

## The shape

250 to 450 words, a headline that names the school and the lead move
("Kennesaw St. launches Owl Nest Collective with $2.5 million seed").

**1. The news.** The lead move: what, how much, how long, who it is for. A
collective or an NIL deal is money for the players; say so plainly.

**2. The other moves**, one short paragraph each, if there are more.

**3. What it means.** One paragraph: what the department is building toward
(keeping players, recruiting, the facilities race in the conference). Measured,
not breathless.

## Rules

- Use the money exactly as given, in millions ("$2.5 million", "$180,000 a
  year" when under a million). A deal's total is `years` times the yearly sum;
  say it only as that. Never invent other terms or who negotiated.
- Never say how a move will change recruiting rankings, wins, attendance or a
  player's decision. Nobody knows yet.
- The athletic director is "the athletic department" or "the AD". Never name
  them. Never name a player in an NIL deal unless the call names one (a player brand deal does).
- No quotes. Nobody was interviewed.
- CPG Playbook, when it appears, is a partner like any other: report the deal,
  never sell the product.
- Never say the game is a game, a save or a file. It is the season.
