# Playoff scenarios

With the season nearly over, stop ranking and start projecting. Who is in, who
is out, and exactly what each contender needs.

`contenders` gives every team inside the committee's top twenty with their
record, conference record and standing, `losses` and `rankedWins` (the
complete lists), `conferenceChampionshipGame` (the name of its league's title
game), and `remaining`: every game left, with the opponent and that
opponent's ranking when it has one. `weeksRemaining` tells you how much is
left. `committeePoll` is the committee's list and `mediaPollTop10` the
media's. `projectedField` is the twelve-team bracket as it would be drawn
today under the format's rules — the five highest-ranked conference
champions in, the field seeded straight by rank, byes to the top four seeds;
`projected: true` means each "champion" is whoever leads its league right
now.

800 to 1,200 words.

## Structure

- Open with the bracket as it stands if the season ended today, from
  `projectedField` and nothing else. Be specific: name the teams and the
  seeds, and say which places belong to projected champions.
- **Locks**: who cannot realistically miss, and why.
- **Controls its own fate**: teams that get in by winning out. Say precisely
  which games those are, using the remaining schedule.
- **Needs help**: the specific combination of results each one needs. This is
  the section readers come for, so be concrete. "They need to win at a ranked
  opponent in week 13 and have the team ahead of them lose once" beats any
  amount of hedging.
- **The squeeze**: conference championship implications. A team sitting second
  in its league may need to win out just to reach the title game.
- Close on the one team you believe is being underrated by the committee, with
  the schedule-based case for it.

## Rules

- Every scenario must be grounded in a real remaining game from `remaining`.
  Never invent an opponent or a matchup. A team whose `remaining` is empty has
  only its conference championship game left, if it reaches it, and nothing
  else.
- Do not assign win probabilities you cannot support.
- Committee rank and media rank are different, and where they disagree that is
  worth a sentence.

## Treatments

- The scenarios: the default — locks, controls its own fate, needs help, the
  squeeze, the underrated one.
- Controls its fate: organise the whole piece around the one question — who
  gets in by winning out and who needs a result elsewhere — with each
  contender's `remaining` walked game by game, and the projected field only
  at the end.
- The bye race: the piece is about the four byes in `projectedField`. Who
  holds one today, who takes it from them with what result, and which
  conference title game decides two of them. The rest of the field gets a
  paragraph.

## Championship Saturday

When `championshipSaturday` is present, this is the week before the
conference title games, and this piece is THE preview of them. The race is
over; every title game decides a champion. Write it as that, never as "who
pulls ahead".

`championshipSaturday.games` has every title game: its `name` (say it: "the
SEC Championship"), the `favourite` and the `underdog` (by this week's
committee rank), and what each result does to the twelve-team field:
`ifFavouriteWins` and `ifUnderdogWins` give each side's `seed` (with `bye`
and `champion`) or `out: true`. Under `ifUnderdogWins`, `bumpedOut` lists
teams that would lose their place to an upset champion (the bid thief),
`getsIn` teams that would take one, and `byeChanges` any bye that moves.
`baseline` is the field if every favourite wins.

Structure for this week instead of the sections above:

- **Open on the field if the favourites hold**, from `baseline`: the four byes,
  the first-round pairings (5 v 12, 6 v 11, 7 v 10, 8 v 9).
- **One `##` section per title game**, the biggest stakes first. Name the game,
  the two teams, and say exactly what is on the line both ways: "Win, and
  Georgia is the SEC champion and the 2 seed with a bye. Lose, and Georgia is
  the 7 seed hosting a first-round game." A loser who is `out` is playing for
  its season. A `bumpedOut` team is the one watching this game hardest; say so.
- **The bubble**: the teams in `baseline.firstOut` and anyone in `bumpedOut`,
  and which results they need.
- Close on the game with the most riding on it.

Every seed here is "on this week's rankings" (`rankingsNote`): the committee
ranks again after Saturday. Never present one as certain, and never invent a
seed, a bye or a bowl that the data does not give.
