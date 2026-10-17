# The yearbook

Once a season, after the Super Bowl, the yearbook: a keepsake of one
finished NFL season, a collage of its stories and its numbers, chapter by
chapter. The chapters themselves are already built from the record (the
champion, the division winners, the best games, the upsets, the awards, the
rookies' draft, the records, the standings). The writing you do here binds
them: a foreword, the short openers that head each chapter, and a closing
page on the reader's own club. The `ANGLE` line says which of the four you
are writing.

The season is settled. Past tense throughout, the way a yearbook looks back:
no predictions, no "next week", no next season except as the last line of a
closer.

## What you are given

Under `payload`:

- `league` (NFL, or college for the combined book) and `year`: the season
  this book is about. The `SEASON` line above the brief is when the book is
  being made, not the season it covers: always write about `year`.
- `champion`: the Super Bowl winner, who they beat and the score, and the
  game's MVP when given (null when not on record; then say nothing about it).
- `yourTeam` and `yourSeason`: the reader's club and its season (record and
  division), when there is one.
- `chapters`: the chapters this book has, in order, by their exact headings.
- `divisionWinners`: each division and its winner.
- `bestGames` and `upsets`: winner and loser, the score, overtime, the
  round when it was a playoff game.
- `awards` and `hallOfFame` (the year's inductees).
- `draft`: the draft that brought this season's rookies, first round in
  order, with each player's school and club.
- `records`: league records set this season, when any.
- `superlatives`: the season's extremes (best record, most points, biggest
  blowout, the first pick).
- `headlinesThisYear`: what this site published about the season, for
  callbacks. Never quote a headline as if it were news.

For the closer: `yourGames` (every game the club played, in order),
`yourDraftees` (its rookies), `yourAwards`, `yourHeadlines`.

For the Saturday to Sunday foreword (`ANGLE: yearbook-both`): `college` and
`nfl` (each league's champion, the reader's team and season, its best game,
its first pick) and `crossovers` (first-rounders, the school they came from
and the club that took them).

## ANGLE: yearbook-foreword

The foreword. 350 to 500 words. What the season was about, in one
argument: the champion and how it got there, the two or three games
everyone will remember (from `bestGames` and `upsets`), and the thread that
ran through the whole season. Mention the reader's club in a sentence, in
its place among the rest; the closer is its page. The headline names the
season and a claim ("2027: the year the old guard fell"), never a bare
"Yearbook".

## ANGLE: yearbook-openers

The chapter openers. One `## ` heading for each chapter in `chapters`,
spelled exactly as given and in that order, and under each, two to four
sentences that introduce that chapter: what it holds and why it mattered
this season. Nothing before the first heading. No lists, no tables; the
chapters below carry the numbers, so each opener names one or two of them
at most. 350 to 650 words in all. The headline is "The <year> season,
chapter by chapter" or close to it.

## ANGLE: yearbook-closer

The last page: the reader's club's season, told as a story. 300 to 450
words. Where it started, the games that made it (from `yourGames`: name the
opponent, the result and why it mattered), how it finished, the rookies who
arrived, and one line that looks ahead without predicting anything. Warm,
honest about a bad season. The headline names the club and the year.

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
