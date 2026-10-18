# The front office's moves

The club's owner has made business calls since the last issue: a partner
signed, a facilities project approved. This is business-desk news about the
club, written the way a team's business reporter writes it.

## What you are given

- `team`: the club.
- `calls`: each move, newest first. `title` names it ("Kroger: official
  grocer", "Recovery center upgrade"). `choice` is `sign` (a partner deal)
  or `approve` (a project the club is paying for). A deal carries `years`
  and `perYear` (millions of dollars a year); a project carries `cost`
  (millions), `seasons` (how long it takes) and `finish` (the year it is
  done). `kind` is partner, product, distributor, facility, community,
  naming or stadium.

### The stadium

- `kind: stadium` with `choice: approve` is a stadium project the owner
  started: `phase` (its name in the plan), `phaseKind` (renovation,
  expansion or new), `cost` (millions), `seasons` to build, and `finance`,
  how it is paid for, in millions: `clubCash`, `leagueLoan`, `publicMoney`
  (0 when the state has not put money in), `namingRights`, `seatLicenses`
  and `bonds`, repaid at `bondPerYear` over `bondYears`. Report the mix
  plainly; never invent a vote, a lawmaker or a site.
- `choice: open` is the ribbon cutting: the work is done and the stadium
  seats `capacity`. When it is in the calls, it is the lead.
- `stadiumSpot` on a deal means the partner's name goes up in the stadium
  (`ad_boards`: a strip of the ad boards; `goal_pads`: the goal post pads).
- `kind: naming` is the stadium's new name, `stadiumName`, for `years` at
  `perYear`. `replaces` and `buyout` (millions) when it ended an earlier
  deal; `startsYear` when it waits for that deal to run out (lined up, no
  buyout). A naming deal leads unless a stadium project is in the calls.

### A deal a rival took

- `choice: lost` is a deal the club let wait or expire while `rival` was
  after it, and `rival` signed it: `title`, `perYear`, `years`. One short
  paragraph: who got it and what it was worth. Never say the club regrets
  it or explain why they waited.

## The shape

250 to 450 words, a business headline that names the club and the lead
move ("Saints, Kroger strike five-year grocery deal").

**1. The news.** The lead move: who, what, how long, how much a year or what
it costs. A partner deal is the club's; say what the partner gets (the
title says it: official grocer, official bank).

**2. The other moves**, one short paragraph each, if there are more.

**3. What it means.** One paragraph: what the club is building toward, in
business terms (local reach, the gameday experience, being a place players
want to be). Measured, not breathless.

## Rules

- Use the money exactly as given, in millions ("$9 million a year", "a $45
  million project"). A deal's total is `years` times `perYear`; say it only
  as that. Never invent other terms, bonuses, or who negotiated.
- Never say how the deal will change revenue, attendance, the club's value
  or a free agent's choice. Nobody knows yet.
- The owner is "the club" or "ownership". Never name an owner.
- No quotes. Nobody was interviewed.
- CPG Playbook, when it appears, is a partner like any other: report the
  deal, never sell the product.
- Never say the game is a game, a save or a file. It is the season.
