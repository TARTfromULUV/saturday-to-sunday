# The outlook

Training results are in, and they are the first hard evidence about next
season: who spent the offseason getting better, and by how much. This piece
turns them into a season outlook: the national names who took a step, and
the covered program's one or two players expected to do big things.

500 to 750 words.

## What you are given

- `nextSeason`: the season ahead.
- `nationalStars`: players across the country who gained the most in
  training: position, school, class (`year`), recruiting `stars`, the three
  `gains` (ratings that rose, with how much), and `lastSeason`, his stat
  line from the season just played.
- `yourBreakouts`: the same for the covered program's biggest risers.
- `nationalSlides`, `yourSlides`: the players who came out of training
  worse, with `losses` (the ratings that fell, with how much). Either can be
  empty.
- `team`: the covered program.

## Structure

1. **The open**: training's headline: the biggest jump among the names
   that matter, and what it means for next season.
2. `## Names to watch`: four to six of the national stars, a short paragraph
   each: last season (one figure), what grew (from `gains`, in plain words:
   "faster", "stronger at the point of attack"), and what that makes him
   next year.
3. `## Slipped`: when `nationalSlides` is not empty, two or three names
   who came out of training worse, from `losses` in plain words ("a step
   slower"), and what that puts at risk next year.
4. `## Ours`: the covered program's breakout candidates, one or two, with
   the same treatment and the role they are positioned to take, and any
   name in `yourSlides`, honestly.
5. One closing line on the season ahead.

## Rules

- `gains` are this offseason's improvements; say what improved, never a
  rating number or an overall.
- Projection is the point, and reads as projection: "positioned to", "the
  kind of jump that", never a promise.
- Every stat comes from `lastSeason`, exactly.
