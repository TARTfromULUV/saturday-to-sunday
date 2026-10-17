# Game story

Write about ONE game, in the shape a game recap actually takes. What you are
given: the final, the quarter scores, the full team box score in `box`, named
individual lines in `standouts`, and a scoring timeline with lead changes and
the largest deficit the winner overcame. Each team's card carries a `resume` —
its complete `losses` for the season and its `winsOverPowerTop10`. Those are
the only prior results you may reference for either side; an empty `losses`
list means unbeaten. Never reconstruct earlier results from a record or a
ranking.

## The shape

A recap has a fixed skeleton; readers know it without being able to name it,
and departing from it is what makes a piece read like a blog post instead of a
wire story. Follow it.

**1. The lede: one sentence.** Who won, the score, and how it ended — the play,
the player, and the time on the clock if you have them. Power rank in front of
a top-ten name. One sentence, and it carries the whole result:

> The No. 4 Lions stole a 24-23 win from the No. 1 Rams on Sunday night,
> erasing a 20-point fourth-quarter deficit on a 1-yard touchdown run with 25
> seconds to play.

Not a scene. Not a theme. Not "it was the kind of night that". The result.

**2. The second paragraph: the fact that makes it rare.** A streak that ended,
a margin nobody came back from, an unbeaten record gone, a division lead
changing hands. One sentence, stated flatly. If nothing in what you are given
makes this game unusual, skip straight to 3 — do not manufacture a superlative.

**3. The turn, in order.** How the game got to that ending: who led, when it
changed, the sequence that decided it. This is where the quotes live and where
the box score gets used as argument. Three to five paragraphs.

Name the scoring plays you are allowed to name. `namedScores` gives you the
ones that can be pinned on a player, with the passer, the receiver, the yardage
and the clock. Do not narrate every score — pick the ones that changed the
game and give them their detail.

**4. `## The takeaway`** — a subhead by that exact name, then one short
paragraph **per team**, each starting with the team name and a colon. What the
result says about them: the division race, the conference playoff race, what
has to change. The losing side goes first when the loss is the story. Two or
three sentences each, no more.

**5. `## Up next`** — a subhead by that exact name, then one line per team
naming their next opponent from `upNext`, home or away, and the week. If
`upNext` has no entry for a team, leave that team out rather than guessing.

**A playoff game is different, and the brief's round line says so.** The recap
calls the game by that round. The winner advances to the round the brief names
next; the loser's season is over, and its Up next line says so in a few words.
After the Super Bowl there is no Up next at all: the winner is the Super Bowl
champion.

Write from the box score. Lead on the statistic that decided it and the player
who drove it, not on the two teams' rankings.

`contextTeams[].headCoach` gives you the real head coach's name and his
seasons with the team, so never write "the coach". `injuries` (who was out)
and `honors` (players of the week) are worth one sentence each at most, and
only when the result turns on them.

## Quotes

This is a game story, so it carries the locker room. Include **two quotes**:
one from a head coach and one from a player in `standouts`, unless the
constraints below say otherwise. Read the "Quotes" section of the house voice
before you write them.

The pairing that works: the coach explains a decision or a unit, the player
gives one moment. Do not have both of them say the same thing.

Which coach depends on the angle. An **upset** or a **collapse** is the losing
side's story, so the losing coach speaks and he is brief. A **statement** or a
**comeback** belongs to the winner. A **thriller** can take one from each side.

Two constraints:

- If `standouts` is null or empty, **nobody but a coach speaks**, and he can
  only talk about what the team box score shows — the running game, third
  downs, turnovers, time of possession. No play, drive or moment.
- A **routine** game gets one quote or none.

Target 320 to 450 words. The box score, the player lines and the score-flow
chart are published as graphics beside this text, so spend your words on what
they mean rather than on reciting them.

The ANGLE field tells you what kind of story this is. Write to it.

## thriller
The game was close or went to overtime. Structure around the swing: when the
lead changed, who had it last, what the fourth quarter did. Use the timeline.
Do not bury the drama in the third paragraph.

## upset
A team high in the power rankings lost to one it should have beaten. The story
is the losing side. Lead with what the loss costs them: `contextTeams[].rank`
is where each side stands now, `resume` is the season to date, and `upNext` is
the schedule ahead. Give the winner real credit, specifically.

## statement
Two good teams, and one of them was not close. Show it with the box score: the
yardage gap, the third-down disparity, the rushing total. Resist calling it a
"statement win" in the prose; the numbers say it.

## ranked-clash
Two good teams, competitive result. Treat it as a measuring-stick game: what
each side proved, and where it leaves the division and conference races.

## comeback
The winner trailed by a large margin. Anchor the piece to the deficit and the
turn. Name the quarter it flipped.

## collapse
A top-ten team lost badly. This is a team story, not a game story. Was it the
offense or the defense, based on the scoring ranks you are given. What happens
now.

## routine
A result that matters for the standings but produced no drama. Keep it to 250
words. Do not manufacture stakes. (A routine game is normally the column's
material; this angle only reaches you for the reader's own team.)
