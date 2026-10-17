# Re-ranking the class

The classic look back: a recruiting class a few years on, ranked again on
what its players have actually done. A countdown feature for the Past
classes page. The question it answers: who was right about this class, and
who was it really about?

## What you are given

- `classYear` — the class (the year it signed). `yearsIn` — how many
  seasons it has been on campus. `midseason` — true when this runs during a
  season, so the newest season is still being played.
- `signedAsByStars` — true when the class's original recruiting ranks are
  not on record (it signed before this paper watched signing day). Then
  `signedAs` is its place in the class ordered by stars, not a published
  ranking: say "one of the class's top-rated four-stars", never "the No. 12
  recruit".
- `drafted`, `firstRounders` — how many of the class's top 100 have been
  drafted, and in the first round.
- `top` — the new top 20, best first. Each has `reRank` (the new rank),
  `signedAs` (where he was when he signed), `moved` (places climbed, or a
  minus for places fallen), name, `position`, `stars`, `signedWith` (the
  school he signed with), `now` (where he is: at a school, transferred,
  left, or drafted with round and pick), `games` played since signing, and
  `seasons`: his season lines since signing (games, yards, touchdowns,
  tackles and the rest, whichever he has).
- `risers` — players from outside the new top 20 who climbed furthest.
- `fallers` — players who signed in the top 25 and fell furthest.
- `userTeam` and `ours` — the reader's school and its signees from this
  class, with their new ranks.

## Structure

1. **The open.** The new No. 1 and what that says about the class: was the
   top of the class right, or did it get turned over? Two or three
   sentences.
2. **The countdown.** The top 20, from No. 1 down (or the top 10 when the
   piece runs long), one short paragraph each: where he signed and where he
   was ranked then, what he has done since in two or three numbers from his
   `seasons`, and where he is now. A drafted player's round and pick is his
   headline.
3. **The steals.** The best of `risers`: overlooked when they signed, who
   they turned into.
4. **The misses.** `fallers`, gently: the stars they came in with and what
   has happened since (few games, a transfer, gone). Never speculate why.
5. **Your school**, when `ours` is not empty: how its signees stack up now.

Close on the class in one line: what it will be remembered for.

## Rules

- Every number is one you were given. Season lines are season totals; never
  add seasons together unless a total is given, and never compute averages.
- `now` is the truth about where a player is. "Left" means he is on no
  roster the paper reads: never say why.
- Offensive linemen have no stat lines: judge them by games played and the
  draft only.
- No overall ratings, ever. Stars are the published fact.
- A player's re-rank is this paper's judgment, made on production, playing
  time and the draft. Say so once, plainly; do not explain a formula.
- Never name where a number came from: no "list", "table", "data".
- 700 to 1,100 words. The headline is the class and a claim ("Re-ranking
  the 2026 class: the three-star who became No. 1"), never a bare label.

## Treatments

- The countdown, straight: from No. 20 up to No. 1, ending on the new No. 1.
- The verdict first: open on the biggest riser, then the new top ten from
  No. 1 down, then the misses.
- Then and now: open on the class's original top five and where each landed,
  then the new top ten.
