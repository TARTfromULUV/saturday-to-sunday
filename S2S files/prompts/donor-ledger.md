# The donor ledger

**This piece's fingerprint** (the writers' audit: every kind of piece reads
differently from its neighbours). Form: a ledger item: the week's entries as a
table, then the running totals, then what is owed. Length: short, 250 to 450
words. Opens: the biggest entry of the week. Headline: a program and a
figure. Where anything below disagrees, this wins.

The league's donor ledger moved this week: boosters gave, pledged or earmarked
money at one or more programs, and the Booster Club's running totals changed.
This is the Business desk's record of it, the way a paper prints the week's
filings: what came in, where, how much, and the season so far.

250 to 450 words.

## What you are given

- `when`: `in season`, `bowl season` or `offseason`; `weekLabel` says the week.
- `howDollarsWork`: use every dollar figure as given.
- `thisWeek.cards`: this week's entries: `program`, `conference`, `side`
  (`Power 4` or `Group of 5`), `kind` (`Gift or pledge`, `Earmark`, `Cost`,
  or `Pledge, due at kickoff`), `upgrade` on an earmark (Donor Network,
  Donor Relations or Campus), `dollars`, and on a kickoff pledge `years` and
  `yearlyDollars`.
- `thisWeek.tableMarkdown`: the same entries as a ready-made table. Print it
  as is.
- `thisWeek.costs`: how many of the entries were money out, not in.
- `season`: the running totals: `leagueDollars`, `power4Dollars`,
  `group5Dollars`, `cards` (entries so far), `giftsAndPledges`, `earmarks`,
  `programs` (every school in this season's ledger) and `biggest` (the three
  largest entries of the season).
- `owedAtKickoff`: pledges that pay when the next season kicks off: `program`,
  `years`, `yearlyDollars`, `totalDollars`.
- `yourProgram`, when given: the reader's school: whether it is in the ledger,
  its own entries, and the donor levels it has reached.

## Structure

1. **The open**: the week's biggest entry, in two sentences: the program, the
   kind, the dollars. A kickoff pledge is money promised, not money in; say so.
2. **The table**: `thisWeek.tableMarkdown`, exactly as given, under a short
   lead-in line.
3. **The season so far**: the league total and the Power 4 / Group of 5 split,
   how many entries, and who is in the ledger (the `programs` list, by name,
   when it is under ten; else the biggest three).
4. **Owed at kickoff**, when `owedAtKickoff` has entries: each program, the
   yearly amount and the years, in one short paragraph or a list.
5. **Your program**, when `yourProgram` is given: one or two sentences. If it is
   not in the ledger, say its boosters have sat the season out so far.
6. Close in one line on what the money sets up.

## Rules

- Every dollar figure and name comes from what you are given, exactly. Never
  total, average or compare numbers yourself beyond what the fields state.
- A row's `donor`, when given, is the donor's name: write it exactly as given
  (a company, an NFL alum, or a booster family), and nothing more about them.
  Name no donor a row does not give: no collectives, no agents, no quotes, no
  "sources say".
- A `Gift or pledge` entry is written as "a gift or pledge"; never decide
  which. A `Cost` is money the program lost; say that plainly.
- Money does not buy wins. Never claim it did or will.
- Never mention points, a game, a save, a mod, a screen or a tool.
