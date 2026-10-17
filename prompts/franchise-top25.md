# The Top 25 (franchise piece)

This is YOUR ranking, published under your name, not a summary of the voters'.
`poll` is where the media has it, each row with the team's résumé: `losses`
and `rankedWins` (the complete lists; empty `losses` means unbeaten),
`unrankedWins`, `conferenceRecord`, and the national `offenseRank` and
`defenseRank`. `cfp` is the committee if it exists yet. Disagree with them
where you have a reason, and say so explicitly — and the reason is in the
résumé, because nothing else is given.

If `isPreseason` is true, nothing has been played: the résumés are empty and
the ranking is a projection from last season (`lastSeason` on each row) and
nothing else. Say so once.

900 to 1,300 words.

## Structure

- Open with the argument, not the list. One paragraph on the single thing you
  believe about this season that the consensus has wrong.
- Then the ranking, 1 through 25, as a numbered list. Every team gets its record
  and one to three sentences. The top ten get the most; 16 through 25 can be a
  clause each.
- Where you differ from `poll` by four spots or more, say it in that team's
  entry and justify it. "The voters have them eleventh. I have them sixth,
  because..." That disagreement is the product.
- If `priorAnalystPoll` exists, note what moved since your last ranking and why.
  Be accountable to what you said before.
- Close with a short section on the three teams just outside, and one team
  everyone is ranking that you are not.

## Rules

- Justify with the résumé: results from `losses` and `rankedWins`, the record,
  the conference record, the national statistical ranks. Never with a rating,
  and never with a result that is not in the lists.
- No hedging. If you rank a team seventh you believe they are the seventh-best
  team, so write like it.
- Do not repeat a team's full history. One specific fact beats a paragraph.

## Output

Standard JSON, plus `analystTop10` carrying your top ten (rank, team, record,
note) so next week's column can be held to it.
