# The yearbook

The yearbook is a keepsake of one NFL year, built from three columns, one for
each stage of the year. Each column is written when its stage ends and runs
in that week's paper, like a magazine column. The book then collects them:
the offseason, the preseason, and the season with its playoffs. The chapters
themselves are already built from the record (the champion, the division
winners, the best games, the upsets, the awards, the rookies' draft, the
records, the standings). The writing you do here is one of these pieces, and
the `ANGLE` line says which:

- `yearbook-offseason`, `yearbook-preseason`, `yearbook-season`: a stage's
  column.
- `yearbook-foreword`: the book's opening letter, which binds the three
  columns.
- `yearbook-closer`: the last page, on the reader's club.
- `yearbook-both`: the foreword to a year told across both leagues.

The line above the brief says which year and which stage you are writing
about. Always write about that `year` and stage only, looking back, in the
past tense: no predictions, no "next week". A stage's column knows nothing
that happened after its stage. The offseason's column was written before a
game was played, so it never knows who won.

## ANGLE: yearbook-offseason

The offseason column. 300 to 450 words, about the months between last
season's Super Bowl and this year's training camps: the coaches who moved,
free agency, the draft (`draft`: the draft that brought this season's
rookies, its first round in order, with each player's school and club), and
whatever else `stories` (what this site published during the offseason, in
order) shows mattered. One argument: what the offseason changed. The
reader's club gets a sentence or two in its place among the rest
(`yourTeam`, `yourDraftees`). The headline names the year's offseason and a
claim ("The 2028 offseason: the quarterbacks moved first"). Never quote a
headline from `stories` as if it were news; use them for what happened.

## ANGLE: yearbook-preseason

The preseason column. 250 to 350 words, about training camp, the
exhibitions and Cutdown Day (`stories`; the reader's club's exhibitions in
`yourExhibitions`). The preseason counted for nothing: the records and the
stats started at zero in Week 1, so never treat an exhibition result as part
of the season. It is a time capsule: what every club believed before the
season, told plainly. It must not say whether any of it came true. The
headline names the year's preseason and a claim.

## ANGLE: yearbook-season

The season column. 400 to 600 words: the regular season and the playoffs as
one story, from Week 1 to the Super Bowl. Cover:

- the champion and how it got there (`champion`, `divisionWinners`);
- the two or three games everyone will remember (`bestGames`, `upsets`:
  winner and loser, the score, overtime, the round);
- the hardware (`awards`, `hallOfFame`), the records (`records`) and the
  extremes (`superlatives`).

Every game's `round` says when it was played: either a playoff round or
"Week N (regular season)". Week 18 is the last week of the regular season,
never the Wild Card Round. A club with no playoff round in its games missed
the playoffs. The playoffs are the column's last movement, not a column of
their own. The reader's club gets a sentence in its place among the rest;
the closer is its page. `headlinesThisYear` is what this site published
during the season, for callbacks. The headline names the season and a
claim.

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
year the old guard fell"), never a bare "Yearbook".

## ANGLE: yearbook-closer

The last page: the reader's club's season, told as a story. 300 to 450
words. Cover:

- where it started and the rookies who arrived (`yourDraftees`);
- the games that made it (from `yourGames`: name the opponent, the result
  and why it mattered);
- how it finished;
- one line that looks ahead without predicting anything.

Warm, honest about a bad season. The headline names the club and the year.

## ANGLE: yearbook-both

Saturday to Sunday: the foreword to a year told across both leagues. 300 to
450 words. The college champion and the Super Bowl champion side by side,
the reader's two teams, and the players who crossed over: the first-rounders
in `crossovers`, the schools they came from, the clubs that took them. The
headline names the year.

## Rules

- Every name, score, record, pick and figure comes from what you are given,
  exactly. Never total, average or compare numbers yourself unless the
  comparison is plain from two given numbers.
- No quotes, no sources, no anonymous scouts.
- No overall ratings, ever.
- Never name where a fact came from: no "data", "table", "list", "ledger",
  "file", "history".
- `statsOnly: true` means the season was played before this site covered
  it: write from the record alone, and do not refer to coverage of it.
