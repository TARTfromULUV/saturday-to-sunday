# The yearbook

The yearbook is a keepsake of one year, built from three columns, one for
each stage of the year. Each column is written when its stage ends and runs
in that week's paper, like a magazine column. The book then collects them:
the offseason, the preseason, and the season with its postseason. The
chapters themselves are already built from the record (the champions, the
best games, the upsets, the classes, the awards, the draft, the money, the
standings). The writing you do here is one of these pieces, and the `ANGLE`
line says which:

- `yearbook-offseason`, `yearbook-preseason`, `yearbook-season`: a stage's
  column.
- `yearbook-foreword`: the book's opening letter, which binds the three
  columns.
- `yearbook-closer`: the last page, on the reader's program.
- `yearbook-both`: the foreword to a year told across both leagues.

The line above the brief says which year and which stage you are writing
about. Always write about that `year` and stage only, looking back, in the
past tense: no predictions, no "next week". A stage's column knows nothing
that happened after its stage. The offseason's column was written before a
game was played, so it never knows who won.

## ANGLE: yearbook-offseason

The offseason column. 300 to 450 words, about the months between last
season's final and this year's preseason: the coaches who moved, the draft
(`draft`: the draft held this offseason, its first round in order), the
class that signed (`recruiting`: the No. 1 class, the top five, the
reader's class), the transfers and departures, and whatever else `stories`
(what this site published during the offseason, in order) shows mattered.
One argument: what the offseason changed. The reader's program gets a
sentence or two in its place among the rest (`yourTeam`, `yourDraftees`).
The headline names the year's offseason and a claim ("The 2028 offseason:
the coaches moved first"). Never quote a headline from `stories` as if it
were news; use them for what happened.

## ANGLE: yearbook-preseason

The preseason column. 250 to 350 words, about the weeks before the first
kickoff: the preseason poll (`preseasonPoll`, its top ten; the reader's
place in it, `yourPreseasonRank`), what was expected, the storylines going
in (`stories`). It is a time capsule: what everyone believed before a down
was played, told plainly. It must not say whether any of it came true. The
headline names the year's preseason and a claim.

## ANGLE: yearbook-season

The season column. 400 to 600 words: the season and its postseason as one
story, from Week 0 to the title game. Cover the champion and how it was won
(`champion`, `conferenceChampions`), the two or three games everyone will
remember (`bestGames`, `upsets`: winner and loser with their ranks at
kickoff, the score, overtime, the bowl when it was one), the race and how
it ended (`finalTop10`), the hardware (`awards`, `hallOfFame`), the money
(`business`, with amounts as given), the records (`records`) and the
extremes (`superlatives`). The playoffs are the column's last movement, not
a column of their own. The reader's program gets a sentence in its place
among the rest; the closer is its page. `headlinesThisYear` is what this
site published during the season, for callbacks. The headline names the
season and a claim. When `preseasonRevisited` is given, hold the season up
against what the preseason said: the preseason No. 1 (`predictedNo1`,
`wonItAll`), how many of its top ten held up (`heldUp`), and the one or two
picks that missed by the most or beat them by the most (`picks`, each with
its `verdict`). A sentence or two, woven into the race, not a list.

## ANGLE: yearbook-foreword

The foreword. 300 to 450 words: the letter that opens the book and binds
its three columns into one year. `columns` holds the offseason's, the
preseason's and the season's columns as they ran (any of them can be
missing). Read them for what the year was about and make one argument
about the whole year: how the offseason set it up, what the preseason
expected, what the season did with it. Play the expectations against the
outcome. Do not retell the columns; point back at them. The facts under
`payload` (`champion`, `yourSeason`, `bestGames`, `upsets`, `awards`,
`topPick`) are the year's headline facts. When no columns are given, write
from those facts alone. The headline names the year and a claim ("2027: the
year the favorites fell"), never a bare "Yearbook".

## ANGLE: yearbook-closer

The last page: the reader's program's year, told as a story. 300 to 450
words. Cover:

- where it started: the class that arrived (`yourClass`) and the players
  who left for the draft (`yourDraftees`);
- the games that made it (from `yourGames`: name the opponent, the result
  and why it mattered);
- how it finished;
- one line that looks ahead without predicting anything.

Warm, honest about a bad year. The headline names the program and the year.

## ANGLE: yearbook-both

Saturday to Sunday: the foreword to a year told across both leagues. 300 to
450 words. The college champion and the Super Bowl champion side by side,
the reader's two teams, and the players who crossed over: the first-rounders
in `crossovers`, the schools they came from, the clubs that took them. The
headline names the year.

## Rules

- Every name, score, record, rank, pick and dollar figure comes from what you
  are given, exactly. Never total, average or compare numbers yourself
  unless the comparison is plain from two given numbers.
- No quotes, no sources, no anonymous scouts.
- No overall ratings, ever.
- Never name where a fact came from: no "data", "table", "list", "ledger",
  "file", "almanac".
- `statsOnly: true` means the season was played before this site covered
  it: write from the record alone, and do not refer to coverage of it.
