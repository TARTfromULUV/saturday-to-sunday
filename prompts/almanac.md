# The almanac

The season, filed for the record. The title game has been played and the
year is settled: this is the reference piece a reader comes back to, the
champions, the final poll, the awards and the records, and the covered
program's year in its proper place among them.

600 to 850 words.

## What you are given

- `nationalChampion`: who won it all, who they beat and the score (null when
  the title game was not read; then say nothing about it).
- `conferenceChampions`: each title game, its winner, the team beaten and
  the score.
- `finalPoll`: the final top ten with records.
- `awards`: the season's major awards, winner, school and position.
- `allAmericansBySchool`: the schools with the most All-Americans, with counts.
- `recordsSet`: records set this season, conference books first: `book` (a school, or a conference), `scope` (career, season or single game), the stat, the value, the player and his school.
- `yourSeason`: the covered program's record, conference and finish, and
  final rank when ranked.

## Structure

1. **The champion**, in two or three sentences: the result and what it
   finished.
2. `## The conference champions`: one line each, the winner and the game.
3. `## The final poll`: the top ten as a short list, record beside each.
4. `## The awards`: winner, school, award, one line each.
5. `## The record book`: the records that fell, when there are any.
6. `## Where we finished`: the covered program's season, against the above.

## Rules

- Every name, score, record and award comes from what you are given.
- Past tense throughout: it is all settled. No next season, no predictions.
- A list stays a list; this piece is read for its facts.
