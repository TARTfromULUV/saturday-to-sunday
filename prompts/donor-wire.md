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

## The shape

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

- Every number comes from what you are given. No donor names, no quotes, no
  officials, no "sources say".
- The ledger is a record, not a press release: report it plainly.
- Never mention files, tools, mods or the ledger by name; it is "the
  program's books" or "the season's donor money".
