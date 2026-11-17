# Donor wire

A short news piece on one line of the season's donor ledger: a gift, money
lost, or a capital project at one program. The economy tool records each
season's money once a year, so this runs as a new season kicks off, and it
reads like the wire item it is: what happened, how big, and what it means
for the program now.

250 to 400 words.

You are given `donorEvent`: the program (`team`), the `kind` (`positive`,
`renewal` or `installment` is money in; `negative`, `lapse` or `penalty` is
money out; `capital` is a building project), the ledger's own one-line
`headline`, the `dollars`, the `years` it runs over, whether it was
`coachDriven`, and `now`: the program's record, conference record and
standing, rank when ranked, and streak. `recordedSeason` is the season the
ledger filed it under. `others` are the season's next-biggest lines, for one
sentence of context at most.

## The week's card (`weekEvent`)

Some weeks you are given `weekEvent` instead of `donorEvent`: one entry off
this week's donor ledger, the week's most notable. Then the piece is 200 to
350 words, and `weekLabel` says the week. `weekEvent` has the program
(`team`, `conference`), `what` it was (`Gift or pledge`, `Pledge over N
years`, `Earmark: Donor Network`, `Earmark: Donor Relations`, `Earmark:
Campus`, or `Money pulled`), the `dollars` (and on a pledge the `years` and
`yearlyDollars`), whether it is `yourSchool` (the reader's), `now`: the
program's `record`, `rank` when ranked, `streak` (wins positive, losses
negative) and `lastResult` (the `opponent`, `won` or `lost`, the `score`),
and the `donor`:

- `donor.name`: who gave (or pulled) it, exactly as written: a company, an
  NFL alum, or a booster family.
- `donor.type`: `company`, `NFL alum` or `booster family`.
- `donor.title`: how to introduce them, e.g. "Former Heron and Saints LB" or
  "Corporate partner". On an NFL alum, `donor.about` gives the `college`, the
  `nflTeam`, the `position`, whether `retired`, and `proBowls`.

`others` are up to three more of the week's entries (`team`, `what`,
`dollars`, `donor`), for one sentence at most.

The shape for a week's card:

- The headline names the donor or the program, and the money: "Former Heron
  Jordan Smith gives $2.4 million to Haldane State".
- Open on the donor, the program and the dollars. An `Earmark` is money for
  that department or building: Campus is a building; say so plainly. `Gift or
  pledge` is "a gift or pledge"; never decide which. `Money pulled` is a donor
  taking money back: say it plainly, and set it beside the record and the
  streak, never as a cause you know.
- Then the program now: the record, the streak, last week's result.
- Close on what the money means for the program this season.

**The donor's name is the one exception to the house rules on names**, for
this piece only: write `donor.name`, and on an NFL alum the `nflTeam` and
`position`, exactly as given (the words "NFL" too). Nothing about the donor
beyond what is given: no age, no class year, no business details, no family
members, no quotes, no reasons they gave. Name no other professional club,
player or company.

## The shape (`donorEvent`)

- The headline names the program and the money: "Kennesaw St. lands a
  $4.2 million gift", "Donors pull $1.8 million from Texas".
- Open on the event, with the dollars and the years.
- Then what the program is now: its record and where it stands. Money and
  results agreeing, or not, is the point.
- If `coachDriven` is true, the head coach's standing drove it: say the
  program's results moved the donors, never what a coach said.
- Close on what it means for the season ahead: a facility, the NIL budget,
  a program under pressure to show for it.

## Rules

- Every number comes from what you are given. No donor names beyond
  `weekEvent.donor.name` and the names in `others` (and with `donorEvent`, none
  at all), no quotes, no officials, no "sources say".
- The ledger is a record, not a press release: report it plainly.
- Never mention files, tools, mods or the ledger by name; it is "the
  program's books" or "the season's donor money".
- Dollars as given; never total them yourself.
