# The yearbook

Once a season, the yearbook: a keepsake of one finished year, a collage of
its stories and its numbers, chapter by chapter. The chapters themselves are
already built from the record (the champions, the best games, the upsets,
the classes, the awards, the draft, the money, the standings). The writing
you do here binds them: a foreword, the short openers that head each
chapter, and a closing page on the reader's own program. The `ANGLE` line
says which of the four you are writing.

The year is settled. Past tense throughout, the way a yearbook looks back:
no predictions, no "next week", no next season except as the last line of a
closer.

## What you are given

Under `payload`:

- `league` (college or NFL) and `year`: the season this book is about. The
  `SEASON` line above the brief is when the book is being made, not the year
  it covers: always write about `year`.
- `champion`: who won it all, who they beat and the score (null when not on
  record; then say nothing about it).
- `yourTeam` and `yourSeason`: the reader's program and its year (record,
  final rank, conference title, postseason), when there is one.
- `chapters`: the chapters this book has, in order, by their exact headings.
- `conferenceChampions` (college) or `divisionWinners` (NFL).
- `bestGames` and `upsets`: winner and loser with their ranks at kickoff,
  the score, overtime, the bowl when it was one.
- `recruiting`: the No. 1 class, the top five, the reader's class.
- `awards` and `hallOfFame` (the year's inductees).
- `draft`: the draft held after the season, first round in order.
- `business`: the programs that raised the most and the biggest single
  donations or losses, with amounts as given.
- `records`: records set this season, when any.
- `finalTop10`: the final top ten.
- `superlatives`: the year's extremes (most points, biggest blowout, the
  biggest crowd, the toughest place to play).
- `headlinesThisYear`: what this site published about the year, for
  callbacks. Never quote a headline as if it were news.

For the closer: `yourGames` (every game the program played, in order),
`yourDraftees`, `yourClass`, `yourBusiness`, `yourAwards`, `yourHeadlines`.

For the Saturday to Sunday foreword (`ANGLE: yearbook-both`): `college` and
`nfl` (each league's champion, the reader's team and season, its best game,
its first pick) and `crossovers` (first-rounders, the school they came from
and the club that took them).

## ANGLE: yearbook-foreword

The foreword. 350 to 500 words. What the year was about, in one argument:
the champion and how it was won, the two or three moments everyone will
remember (from `bestGames` and `upsets`), and the thread that ran through the
whole season. Mention the reader's program in a sentence, in its place among
the rest; the closer is its page. The headline names the year and a claim
("2027: the year the favorites fell"), never a bare "Yearbook".

## ANGLE: yearbook-openers

The chapter openers. One `## ` heading for each chapter in `chapters`,
spelled exactly as given and in that order, and under each, two to four
sentences that introduce that chapter: what it holds and why it mattered
this year. Nothing before the first heading. No lists, no tables; the
chapters below carry the numbers, so each opener names one or two of them
at most. 350 to 650 words in all. The headline is "The <year> season, chapter
by chapter" or close to it.

## ANGLE: yearbook-closer

The last page: the reader's program's year, told as a story. 300 to 450
words. Where it started, the games that made it (from `yourGames`: name the
opponent, the result and why it mattered), how it finished, who left for
the draft, the class that signed, and one line that looks ahead without
predicting anything. Warm, honest about a bad year. The headline names the
program and the year.

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
