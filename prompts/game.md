# Game story

Write about ONE game, in the shape a game recap actually takes. What you are given
gives you the final, the quarter scores, the full team box score in `box`,
named individual lines in `standouts`, and a scoring timeline with lead changes
and the largest deficit the winner overcame. Each team's card carries a
`resume` — its complete `losses` and `rankedWins` lists for the season. Those
are the only prior results you may reference for either side; an empty
`losses` list means unbeaten. Never reconstruct earlier results from a record
or a ranking.

## The shape

A recap is not an essay with a headline on it. It has a fixed skeleton, readers
know it without being able to name it, and departing from it is what makes a
piece read like a blog post instead of a wire story. Follow it.

**1. The lede: one sentence.** Who won, the score, and how it ended — the play,
the player, and the time on the clock if you have them. Ranks in front of both
names. One sentence, and it carries the whole result:

> No. 4 Texas stole a 24-23 win from No. 1 Ohio State on Saturday night,
> erasing a 20-point fourth-quarter deficit on a 1-yard touchdown run with 25
> seconds to play.

Not a scene. Not a theme. Not "it was the kind of night that". The result.

**2. The second paragraph: the fact that makes it rare.** A streak that ended,
a margin nobody has come back from, a first in a series, a number from
`history` or `streak`, or `homeWinStreakEndedToday` when a home run ended.
One sentence, stated flatly. If nothing in what you are given
makes this game unusual, skip straight to 3 — do not manufacture a superlative.

**3. The turn, in order.** How the game got to that ending: who led, when it
changed, the sequence that decided it. This is where the quotes live and where
the box score gets used as argument. Three to five paragraphs.

Name the scoring plays you are allowed to name. `namedScores` gives you the
ones that can be pinned on a player, with the passer, the receiver, the yardage
and the clock. There are usually two or three, and a recap that describes the
fourth quarter without using any of them has left the best material on the
table. Do not narrate every score — pick the ones that changed the game and
give them their detail.

**4. `## The takeaway`** — a subhead by that exact name, then one short
paragraph **per team**, each starting with the team name and a colon. What the
result says about them. The losing side goes first when the loss is the story.
Two or three sentences each, no more.

**5. `## Up next`** — a subhead by that exact name, then one line per team
naming their next opponent from `upNext`. Home or away, and nothing else. If
`upNext` has no entry for a team, leave that team out rather than guessing.

**A playoff game is different, and `playoff` says so.** When it is present,
this game was the `playoff.round`, and the recap calls it that. The winner
advances to `playoff.winnerAdvancesTo`: its Up next line names that round, and
the opponent only if `upNext` lists one. The `playoff.eliminated` team's season
is over; its line says so in a few words and names no next game. When
`winnerAdvancesTo` is null this was the National Championship: the winner is
the national champion, and Up next is dropped entirely. Never call this game
or the next one any other round.

Write from the box score. Lead on the statistic that decided it and the player
who drove it, not on the two teams' rankings.

`standouts` carries each player's class, hometown and jersey number. A freshman
from a town nobody recruits is worth a clause. `contextTeams[].headCoach` gives
you real coach names, tenure and career records, so never write "the coach".

Four more fields are there when they exist and are worth one sentence each at
most: `rivalry` (the game's name and the all-time series), `history` on each
team card (titles, bowl record, the home win streak that just ended),
`injuries` (who was out), and `honors` (preseason all-conference picks and
players of the week). Use whichever one the result actually turns on. A game
that ends a 24-game home streak is a different story because of that fact; a
list of program trivia is not.

## Quotes

This is a game story, so it carries the locker room. Include **two quotes**:
one from a head coach and one from a player in `standouts`, unless the
constraints below say otherwise. Read the "Quotes" section of the
house voice before you write them — the rules there are the difference between
a piece that reads like a beat and a piece that reads like a template.

The pairing that works: the coach explains a decision or a unit, the player
gives one moment. Do not have both of them say the same thing from two angles.

Which coach depends on the angle. An **upset** or a **collapse** is the losing
side's story, so the losing coach speaks and he is brief. A **statement** or a
**comeback** belongs to the winner. A **thriller** can take one from each side,
and that is the one case where two coaches is better than a coach and a player.

Three constraints:

- If `standouts` is null or empty, **nobody but a coach speaks**, and he can
  only talk about what the team box score shows — the running game, third
  downs, turnovers, the time of possession. He cannot describe a play, a drive
  or a moment, because this piece has no record of any.
- A **routine** game gets one quote or none. Do not pad 250 words with a
  manufactured reaction to a game nobody will remember.

Target 320 to 450 words. The box score, the player lines and the score-flow
chart are all published as graphics beside this text, so spend your words on
what they mean rather than on reciting them.

The ANGLE field tells you what kind of story this is. Write to it.

## thriller
The game was close or went to overtime. Structure around the swing: when the
lead changed, who had it last, what the fourth quarter did. Use the timeline.
Do not bury the drama in the third paragraph.

## upset
A ranked team lost to someone it should have beaten. The story is the losing
side. Lead with what the loss costs them: `contextTeams[].rank` is where each
side stands in the poll published after the game (the ranks on the game
itself are at kickoff), `resume` is the season to date, and `upNext` is the
schedule ahead. Give the winner real credit, specifically, not as an
afterthought.

## statement
Two ranked teams, and one of them was not close. This is about hierarchy. Show
it with the box score: the yardage gap, the third-down disparity, the rushing
total. Resist calling it a "statement win" in the prose; the numbers say it.

## ranked-clash
Two ranked teams, competitive result. Treat it as a measuring-stick game. What
did each side prove. Where does it leave the conference race.

## comeback
The winner trailed by a large margin. Anchor the piece to the deficit and the
turn. Name the quarter it flipped.

## collapse
A top-ten team lost badly. This is a program story, not a game story. Was it
the offense or the defense, based on the national statistical ranks in the
you are given. What happens now.

## routine
A result that matters for the standings but produced no drama. Keep it to 250
words. Do not manufacture stakes that are not there. (A routine game is
normally the column's material; this angle only reaches you for the reader's
own team.)
