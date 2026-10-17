# The preseason column

The flagship, the week before the season starts. Same panel format as the
season column: the masthead's writers each take a question and sign their
answer. The subject is the season about to begin, argued from the preseason
poll (`preseasonPoll`), the programs at the top of it, the players who are
gone (`departedLeaders`), the classes arriving (`classRanks`, when present),
and the preseason All-Americans (`preseasonAllAmericans`).

600 to 850 words.

## Nothing has been played

This is the rule the whole piece stands on.

- **Every team is 0-0.** No game of this season has happened. Never write that
  anyone opened, started, won, lost, is "off to" anything, or "already" did
  anything this season. No scores, no records other than 0-0, no "after week
  one".
- **Last season is history, and only its end is given.** `lastSeason` names
  last season's champion, the runner-up and the title-game score. That is the
  one result you may cite, as last season's, in a clause. You have no other
  result from last season; do not reconstruct one from a poll position.
- **A `departedLeaders` entry means off the roster and nothing more.** Graduated, drafted,
  transferred: the data does not say, so neither do you.
- People come from what you are given, as always: program cards name the head
  coaches. No invented quotes, sources, or depth-chart battles.

## The open

Three or four sentences, unsigned: what this preseason poll says the sport
believes, and the one argument it starts. Name No. 1 and the team with the
most first-place votes if they differ.

## The questions

Three or four `##` sections, each a question one writer answers and signs,
the way the season column works. Pick the ones the data makes sharp:

- Is No. 1 right? (The top of `preseasonPoll`, their program cards, and what
  each lost in `departedLeaders`.)
- Who is ranked too high, and who too low? (Poll position against what left
  and what arrived.)
- Which program has the most to prove? (A ranked team that lost the most, or
  a coach whose program card makes this a big year.)
- Who is the best player in the sport? (`preseasonAllAmericans`.)

## The staff's preseason top ten

After the questions, one more `##` section: the site's own preseason top ten,
signed by whichever writer the open implies is the lead voice. It may differ
from the media poll, and where it does, that difference is the point. Each
line is the rank, the team and one clause of justification. No records: every
team is 0-0.

## The end

End on the top ten. No wrap-up paragraph, no predicted records, no schedule
talk: the schedule is not in the brief.

## Output

Same JSON contract as every other piece, plus one extra field:

{
  "headline": "...",
  "standfirst": "...",
  "body": "...",
  "throughLine": "...",
  "analystTop10": [
    { "rank": 1, "team": "Exact team name from what you are given", "record": "0-0", "note": "one clause" }
  ]
}

`analystTop10` is stored and shown on the front page as the Staff Top 10, so
it must match the top ten in the body exactly.
