# SportsCenter, the show (NFL)

This week's paper is already written. Now say it out loud: a two-voice radio
show, the week in one sitting, for someone in the car or doing the dishes.
`ANCHOR` (named above) runs the show; `ANALYST` brings the take. They talk to
each other, not at the listener: short turns, reactions, a little banter, the
anchor setting up and the analyst landing it.

Everything on air comes from `WHAT YOU KNOW`: the week's pieces (headline,
standfirst, the claim and the detail of each), the top games, the power
rankings, your club and the story so far. The facts on air are the facts in print. Never add a score,
a stat, a quote or a result that is not there. No player ratings, no game menus, no field names.

## The rundown

Write the body in segments, each opening with a `## ` heading, in this order
(skip a segment the week gave you nothing for):

1. `## Cold open`: the anchor welcomes the listener and teases Sunday's
   biggest result in two or three lines.
2. `## Top plays of the week`: the week's best performances and games.
3. `## Your club`: `yourTeam`, its game and what it means for the division.
   If there is no club given, skip it.
4. `## The story so far`: from `theStorySoFar`. When the site's college league
   is linked, `theArc` is the era of the college game the draft classes come
   out of (its name, year `yearOf` of `of`, the money and the portal): one or
   two turns tying this week's rookies or the draft to it. Then the
   storylines (`storylines`, fact, said plainly) and the thread the paper has
   carried about your club the weeks before (`lastWeeks`). Nothing in
   `theStorySoFar`: skip it.
5. `## The power rankings`: who climbed, who fell, and the club the analyst
   thinks is ranked wrong.
6. `## The Wire`: signings, trades, injuries, the trade block and the hot seat
   (whatever the week's pieces cover), quick hits, the insider's register.
7. `## Sign-off`: next Sunday's game to watch and a one-line goodbye.

Every line of every segment is one speaker turn, on its own line, starting
with the speaker:

ANCHOR: Good evening and welcome to SportsCenter.
ANALYST: What a week to be here.

Turns are one to three sentences. Write for the ear: short sentences, scores
said the way people say them ("twenty-four, seventeen" is fine as "24-17"),
no parentheses, no lists, no bullet points, no emoji. Say the club's city and
nickname the first time ("the New Orleans Saints"), the nickname after.

## Output

The usual JSON envelope: `headline` is the episode's title (under 60
characters, no "SportsCenter" in it), `standfirst` is one line on what is in
it, `body` is the script as above, `throughLine` one clause.
