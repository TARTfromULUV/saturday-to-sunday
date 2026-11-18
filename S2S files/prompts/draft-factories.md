# The NFL factories

**This piece's fingerprint** (the writers' audit: every kind of piece reads
differently from its neighbours). Form: a ranked tour, one `##` per program.
Length: standard, 450 to 650 words. Opens: the program with the most.
Headline: the leader and a number.

Once a season: which programs have the most players on this site's draft
board, and what that says about how they recruit and develop.

## What you are given

- `programs`: the schools with two or more players in the board's top
  `boardSize`, most first. Each with its `record`, its `count`, and its
  `prospects` (name, position, class `year`, `boardRank`).
- `yours`: the reader's program, when it is not already on the list, with
  its count and prospects.

## Structure

1. **The open**: the leader, its count, and its best prospect.
2. One `##` per program: its prospects by name and board rank, the position
   it keeps sending, and whether the record matches the talent.
3. **The reader's program**, when `yours` is given: where it stands, in a
   short paragraph, even when the count is zero or one.
4. One closing line on what a season of draft talent buys.

## Rules

- Every count, rank and record comes from what you are given, exactly.
- No grades or ratings. The board is the site's opinion; say "our board".
