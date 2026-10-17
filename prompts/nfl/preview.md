# Expert Picks

The week ahead, and the staff's calls on it. This runs every week, so it is the
piece that gives anyone a reason to come back before the next sim.

You are given the slate: `headline` carries the featured games with both
teams' power ranks, records, offensive and defensive scoring ranks, and the
day; `restOfSlate` carries the other games worth a line, one row each. `weeks`
says which week the slate is. `slateSize` is how many games the week has in
all; games in neither list exist but are not yours to write about.

`featuredElsewhere` names the teams the rest of this issue (the column's lead,
the game stories) and the last two issues already led with. Do not open the
piece or title it on one of them when the slate has another game worth the
lead; they still get their entries and their picks like everyone else. The
featured games are ordered with that in mind, so the first is a good place to
start.

When `smallSlate` is true the week has only a handful of games (a playoff
round). Then: no groups, one `###` entry per game, no rest-of-slate section,
and the length shrinks to fit. Never pad a small week.

Featured games (and `userGame`, when present) also carry a `form` card for
each side — the raw material for a real argument:

- `record` and `divisionRecord`/`divisionStanding` — where they sit.
- `streak` — what they have done lately.
- `lastGame` — the most recent result, with opponent and score.
- `losses` and `winsOverPowerTop10` — the ONLY results you may cite for that
  team; an empty `losses` list means unbeaten.
- `star` — their best league statistical leader, with name, position, stat
  and league rank.

600 to 850 words. The form is a preview column, and it has a shape.

## 1. The open

Three or four paragraphs, no subhead, arguing the week's **organising idea**.
Not a list of what is coming — a thesis about what this particular Sunday is
for. Look at the slate and find what it is really testing:

- A division where three teams are within a game of each other playing inside
  the division.
- Two teams at the top of a conference meeting before the bracket does.
- Three teams that cannot afford another loss.

State the idea, back it with two or three specific matchups, then say in one
line what the rest of the piece covers. If the slate has no theme, say so
plainly and open on the single best game instead.

## 2. Grouped games

Then the games, **bundled under themed `##` subheads rather than listed flat**.
Two or three groups, each with a name and a short framing paragraph saying why
these games belong together, then the games inside it.

Examples of group headers: `The NFC South gets sorted out`, `Three teams
playing for their season`, `Unbeaten no longer guaranteed`. Name them for what
they are about, never `Other games`.

Each game inside a group gets its own `###` subhead in this exact form:

```
### Saints at No. 3 Rams (Sunday, 4:25 PM ET, FOX)
```

Power rank in front of a top-ten team only, `at` for the road side, and the
game's `broadcast` in parentheses exactly as given (day, kickoff, network). Then two to four paragraphs of real analysis:

- What each side has actually been doing — lead with their `form` card: the
  streak, the last result, who they lost to. Never reconstruct a loss or a win
  the form card does not list.
- Name players. Each side's `star` gives you a real name with a real league
  rank — "behind Saquon Barkley, the league's No. 2 rusher" beats any amount
  of unit-rank talk.
- The matchup that decides it — a strength against a weakness, stated
  concretely. Scoring ranks are supporting evidence, not the argument: a piece
  where every pick reads "No. 12 offense vs No. 28 defense" is a spreadsheet.
- What the result does to each side's season: the division, the wild card.

Close every game entry with a one-line pick on its own line, in this form:

```
The pick: Rams by 7. New Orleans has not seen a front like this one.
```

Make actual picks. A margin is better than a winner. One clause of reason
after it, no more.

## 3. The rest of the slate

One `##` section near the end for the games in `restOfSlate`, **grouped by
day** using their `dayOfWeek` — Thursday, Sunday, Monday. Each one gets its
matchup line and a single sentence built from the two records you are given,
and then the pick:

```
**Jets at Dolphins** (Sunday, 1:00 PM ET, CBS). Both are 1-3 and one of them leaves 1-4. The
pick: Dolphins by 3.
```

As many of these as `restOfSlate` holds, up to ten. These games carry no form
card, so no streaks, no last results and no named players for them.

## 4. `userGame`

If you are given a `userGame`, it is one more game on the slate and nothing
more. Cover it at exactly the depth its stakes earn. It never gets a section of
its own, never closes the piece, and is never in the headline unless it is the
week's biggest game on the merits.

## Rules

- Every game must be in `headline`, `restOfSlate` or `userGame`. Never invent a
  matchup.
- Never invent a betting line, a spread, or a win probability. The pick is
  yours and it stands on the reasoning.
- `stillToPlay`, when present, is games left over from the week that just
  finished. Worth a sentence in the open, but they are not next week's games.
- No quotes in this piece. Nobody has played yet.

## What a game clinches

A game carrying `clinchStakes` is one where a side can settle something this
week: each named team's lines say what ("Clinches a playoff spot with a win",
"Eliminated with a loss"). Lead with that in the game's analysis, use the lines
as written, and never add a scenario they do not give. In the playoffs, a game
is win or go home: say what the winner plays for next.

