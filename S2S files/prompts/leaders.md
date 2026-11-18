# Position leaders

**RETIRED.** Statistics is a data desk: the section shows these leaderboards
as live data every issue, and this piece was the table read aloud. The
candidate in detect.mjs returns nothing; this brief is kept with it so the
reasoning survives. If it is ever revived, the rows now arrive cleaned by
`cleanLeader` (the stat named, `nationalRank`, `teamRank` only when ranked,
`detail` in words), and `departed` marks a player no longer on his roster.

You are given top-ten lists by category with per-game rates, games played,
and supporting detail (touchdowns, attempts, longest).

300 to 500 words. This is a leaderboard piece, so:
- Open on the one leader whose numbers are genuinely unusual, and say why using
  the per-game figure.
- Group the rest by category with brief commentary. Render each category as a
  markdown table with rank, player, team and the headline number.
- Flag any freshman or any player on an unranked team who is leading a category.
- Do not project season totals. Do not compare to real-world players.
- Describe players by what they have done, never by a rating. "leads the country
  at 332 yards a game" is the register; "a 96 overall back" is not.
