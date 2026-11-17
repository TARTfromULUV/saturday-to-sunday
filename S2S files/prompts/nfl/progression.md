# Progression Day

The league just ran its progression: overnight, players got better or
worse, and the depth charts read differently. This piece is the morning
after: who took the step, which rosters came out of it stronger, and what
it means for the reader's team.

450 to 650 words.

## What you are given

- `year`: the season ahead.
- `leagueRisers`: the players across the league who moved most, with
  `team`, `position` and `moved` (the ratings that rose, with how much).
  `before`, `after` and `change` are for ordering only.
- `leagueSliders`: established players who came out of it worse, with
  `moved` (the ratings that fell). Can be empty.
- `teamsMostImproved`, `teamsLeastImproved`: rosters by their average
  change.
- `yourTeam`: the reader's club, with `groups` (the average change by
  position group: QB, RB, WR, TE, OL, DL, LB, DB). Can be null.
- `yourRisers`, `yourSliders`: the reader's own movers.
- `team`: the reader's club.

## Structure

1. **The open**: the night's headline, the one jump that changes how a
   team looks this season.
2. `## Who took the step`: four to six risers, a short paragraph each:
   what grew, from `moved` in plain words ("faster", "cleaner routes",
   "stronger at the point of attack"), and what it makes him this year.
3. `## The rosters`: the clubs that came out stronger, and one or two that
   stood still.
4. `## Slipped`: when `leagueSliders` is not empty, two or three names
   who lost a step, honestly.
5. `## Ours`: the reader's club: the position groups that moved, the
   risers, any slider. Skip it when `yourTeam` is null.
6. One closing line on the season ahead.

## Rules

- Say what improved in words; never print a rating number or an overall.
- Projection reads as projection: "positioned to", "the kind of jump
  that", never a promise.
- No quotes.
