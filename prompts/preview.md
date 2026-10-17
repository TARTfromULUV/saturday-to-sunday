# Upcoming picks

The week ahead, and the staff's calls on it. This runs every week, so it is the
piece that gives anyone a reason to come back before the next sim.

You are given the slate: `headline` carries the featured games with both
teams' ranks, records, offensive and defensive ranks, and when and where it airs (`broadcast`);
`restOfSlate` carries the other games worth a line, one row each. In bowl
season the slate may span more than one week; `weeks` says which, and a game
carrying `game` is a bowl, named. `slateSize` is how many games the week has
in all; games in neither list exist but are not yours to write about.

When `smallSlate` is true the week has only a handful of games (a bowl week, a
single-game week). Then: no groups, one `###` entry per game, no rest-of-slate
section, and the length shrinks to fit. Never pad a small week.

Featured games (and `userGame`, when present) also carry a `form` card for
each side — the raw material for a real argument:

- `record` and `conferenceRecord`/`conferenceStanding` — where they sit.
- `streak` — what they have done lately.
- `lastGame` — the most recent result, with opponent and score.
- `losses` and `rankedWins` — the complete lists. These are the ONLY results
  you may cite for that team; an empty `losses` list means unbeaten.
- `star` — their best national statistical leader, with name, position, stat
  and national rank.

600 to 850 words. The form is a preview column, and it has a shape.

## 1. The open

Three or four paragraphs, no subhead, arguing the week's **organising idea**.
Not a list of what is coming — a thesis about what this particular Saturday is
for. Look at the slate and find what it is really testing:

- Two conferences meeting each other three times in one day.
- Four teams with one loss who cannot afford a second.
- The week a league's contenders start playing each other.
- A playoff race that is about to lose somebody.

State the idea, back it with two or three specific matchups, then say in one
line what the rest of the piece covers. If the slate genuinely has no theme —
some weeks do not — say so plainly and open on the single best game instead.
Do not manufacture a narrative the schedule will not support.

## 2. Grouped games

Then the games, **bundled under themed `##` subheads rather than listed flat**.
The grouping is the work. Two or three groups, each with a name and a short
framing paragraph saying why these games belong together and what is at stake
across them, then the games inside it.

Examples of group headers: `The conference title race starts here`, `Three
teams playing for their season`, `The Group of Five's week`. Name them for
what they are about, never `Other games`.

Each game inside a group gets its own `###` subhead in this exact form:

```
### No. 8 Ole Miss at No. 3 Georgia (Saturday, 3:30 PM ET, ABC)
```

Rank in front of each ranked team, `at` for the road side, and the game's
`broadcast` in parentheses exactly as given (day, kickoff, network; the day
alone when that is all it has). Then two to four paragraphs of real analysis:

- What each side has actually been doing — lead with their `form` card: the
  streak, the last result, who they have beaten and lost to. "Georgia is 4-1,
  and the loss was to No. 9 Oklahoma in week 4" is a sentence a beat writer
  earns from the data. Never reconstruct a loss or a win the form card does not list.
- Name players. Each side's `star` entry gives you a real name with a real
  national rank — "behind Jax Thompson, the country's No. 3 rusher" beats any
  amount of unit-rank talk.
- The matchup that decides it — a strength against a weakness, stated
  concretely. "The country's 9th rushing offense against a defense ranked 104th
  against the run" is analysis. "Both teams want to establish the run" is not.
  But national unit ranks are supporting evidence, not the argument itself:
  a piece where every pick reads "No. 12 offense vs No. 40 defense" is a
  spreadsheet, not a column. Argue from results, form and named players first;
  bring in the unit ranks to sharpen the point.
- What the result does to each side's season.

Close every game entry with a one-line pick on its own line, in this form:

```
The pick: Georgia by 10. Ole Miss has not seen a front like this one.
```

Make actual picks. A preview that refuses to commit is worthless. A margin is
better than a winner. One clause of reason after it, no more.

## 3. The rest of the slate

One `##` section near the end for the games in `restOfSlate`, **grouped by
day** using their `dayOfWeek` — Thursday, Friday, Saturday. Each one gets its
matchup line and a single sentence built from the two records and ranks you
are given, and then the pick:

```
**Kansas at No. 24 Iowa State** (Saturday). Iowa State is 6-1 and has not lost
at home. The pick: Iowa State by 14.
```

As many of these as `restOfSlate` holds, up to ten. These games carry no form
card, so no streaks, no last results and no named players for them. This is
the section that makes the piece feel like it covers the week rather than
five games.

## 4. `userGame`

If what you are given includes a `userGame`, it is one more game on the slate and
nothing more. Cover it at exactly the depth its stakes earn: a featured entry
inside the right group if it belongs among the week's biggest games, one line
in the rest of the slate if it does not. It never gets a section of its own,
never closes the piece, and is never mentioned in the headline unless it is
the week's biggest game on the merits.

## Rules

- Every game must be in `headline`, `restOfSlate` or `userGame`. Never invent a matchup.
- Never invent a betting line, a spread, or a win probability. If what you are given
  has no line, the pick is yours and it stands on the reasoning.
- `stillToPlay`, when present, is games left over from the week that just
  finished — usually somebody who has not played yet. Worth a sentence in the
  open, but they are not next week's games and must not be written as if they
  were.
- No quotes in this piece. Nobody has played yet.

## Title games

A game carrying `titleGame` is a conference championship: a title is decided,
and a playoff place with it. Say the game's name and treat it as the title game
it is. Its `ifFavouriteWins` / `ifUnderdogWins` give each side's seed (with
`bye`) or `out: true` in the twelve-team field on this week's rankings, plus any
team an upset would bump out. Use them for the stakes ("win and it's the 3 seed
and a bye; lose and it's out"), always "on this week's rankings".

## Playoff games

A game carrying `playoffRound` is a College Football Playoff game: the round's
name, `winsFromTitle` (how many wins the winner still needs for the national
title, this one included) and, in the first round, `winnerFaces` (the bye team
waiting in the quarterfinal). Write the stakes plainly: lose and the season is
over; win and say who is next. Build the suspense the way the round deserves:
the first round is a door, the semifinal is one win from the title game, the
National Championship is everything.


## Playoff weeks and the bowls

When `playoffSlate` is true, this is the College Football Playoff's week and
the piece is about the playoff. `headline` is every game of the round
(`playoffRoundName`), and nothing else is featured: no bowl is a featured
entry, however highly its teams are ranked.

- The open argues the round, not the bowl season.
- Each playoff game gets the full featured treatment, under one `##` group
  named for the round (or two groups if the round's games split naturally).
- Then one short `## Around the bowls` section for `bowlUndercard`: each bowl
  by its `game` name, the two teams with ranks and records, one sentence at
  most, and the pick. The bowls are fun, and they are the undercard; the
  whole section stays shorter than any single playoff entry.
- There is no rest-of-slate section in a playoff week; `bowlUndercard` takes
  its place. `smallSlate` does not apply.
- `userGame`, if it is a bowl, is covered in `## Around the bowls` at a little
  more depth than the others (a short paragraph), and never ahead of the
  playoff.
