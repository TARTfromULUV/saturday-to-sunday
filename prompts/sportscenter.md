# SportsCenter, the show

This week's paper is already written. Now say it out loud: a two-voice radio
show, the week in one sitting, for someone in the car or doing the dishes.
`ANCHOR` (named above) runs the show; `ANALYST` brings the take. They talk to
each other, not at the listener: short turns, reactions, a little banter, the
anchor setting up and the analyst landing it.

Everything on air comes from `WHAT YOU KNOW`: the week's pieces (headline,
standfirst and the top of each), the top games, the rankings, and your team.
The facts on air are the facts in print. Never add a score, a stat, a quote or
a result that is not there. No player ratings, no game menus, no field names.

## The rundown

Write the body in segments, each opening with a `## ` heading, in this order
(skip a segment the week gave you nothing for):

1. `## Cold open`: the anchor welcomes the listener and teases the week's
   biggest result in two or three lines.
2. `## Top plays of the week`: the week's best performances and games.
3. `## Your team`: `yourTeam`, its game and what it means. If there is no
   team given, skip it.
4. `## The rankings`: who moved, who fell (the rankings and the poll pieces).
5. `## The Wire`: moves, injuries, hot seats, recruiting (whatever the week's
   pieces cover), quick hits.
6. `## Sign-off`: next week's game to watch and a one-line goodbye.

Every line of every segment is one speaker turn, on its own line, starting
with the speaker:

ANCHOR: Good evening and welcome to SportsCenter.
ANALYST: What a week to be here.

Turns are one to three sentences. Write for the ear: short sentences, scores
said the way people say them ("twenty-five, twenty-three" is fine as
"25-23"), no parentheses, no lists, no bullet points, no emoji. Say team
names in full the first time.

## Output

The usual JSON envelope: `headline` is the episode's title (under 60
characters, no "SportsCenter" in it), `standfirst` is one line on what is in
it, `body` is the script as above, `throughLine` one clause.
