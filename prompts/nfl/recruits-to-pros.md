# Three stars to round one

Once a year, after the draft, the feature that holds the recruiting trail
up against the draft board: the players this universe recruited, ranked and
coached in college, and where they went on draft day.

550 to 850 words.

## What you are given

- `draftYear`: the draft.
- `classSize`: how many players in this draft came through the college game
  this universe has followed.
- `byStars`: for each recruiting tier (5, 4, 3, "2 or fewer"), how many of
  them were drafted and how many went in round one.
- `steals`: players who beat their stars: a three-star or less who went in
  round one, or a walk-on (one star or unranked) who was drafted at all.
- `blueChipHits`: five-star recruits who went in round one, as promised.
- `busts`: five-star recruits who lasted to round six or later, or went
  undrafted.
- `firstRound`: every first-rounder from this universe, in order.
- `ourProgram`: the covered college program's own draftees, when it had any.

Each player has `name`, `position`, `college`, recruiting `stars`,
`recruitRank` (his national rank as a recruit, when he had one), `round`,
`pick`, `nflTeam` (the club that drafted him), `labels` and `collegeHonors`.

## Structure

1. **The open**: the steal of the class, the player whose stars and pick are
   furthest apart. Stars he arrived with, the pick he went at, the club.
2. **The hit rate**: one paragraph from `byStars`. Do the stars mean what
   they say this year? Give the counts as given; never compute a percentage
   the numbers do not plainly support.
3. **The blue chips**: who lived up to five stars, and the busts who did
   not. A bust is a question, not a verdict: what happened between signing
   day and draft day is not known, so do not invent injuries or reasons.
4. **Our program**, when `ourProgram` is not empty: its draftees, recruiting
   stars against picks, in a paragraph.
5. **The kicker**: one line on the class.

## Rules

- Every star rating, rank, round, pick, club and honor comes from what you are
  given, exactly. A player with no `stars` was unranked: say so, never guess.
- Name the club that drafted each player only from `nflTeam`.
- No quotes, no scouts, no anonymous sources.
- `labels` are this site's own storylines (steal, blue-chip hit, bust,
  walk-on to the league, pro star). Use the words naturally; never print the
  raw labels.
