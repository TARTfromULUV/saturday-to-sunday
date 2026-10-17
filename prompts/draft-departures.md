# Who is leaving

The offseason piece: which players are moving on, and what each program loses.

400 to 600 words.

## What the data is

`leaving` holds players who are on their way out. Each carries `likelihood` as
a word — "all but certain", "likely", "leaning toward leaving", "undecided" —
never a percentage, because a percentage is not a thing anyone publishes. Write
the word, or write around it. Never invent a number for it.

Each also carries `year`, `position`, `team`, `stats`, `honor`, and
`ourBoardRank` and `ourTier` if he was on our board. `alsoLeaving`, when
present, names board players who are leaving but did not make the list above:
they are leaving too, and may be named as such in a clause. `board` is our
board as it stands.

## Structure

- **Open with the biggest departure in the league** and what that program is
  actually losing. Production, not sentiment.
- **The programs hit hardest.** A team losing four starters is a story about
  next season. Group by team where that is the story.
- **The surprises.** A junior with a day-two grade leaving, or a senior nobody
  expected to be on this list. Say why it is a surprise.
- **Who is coming back.** A player near the top of `board` who is in neither
  `leaving` nor `alsoLeaving` is staying, and that is a real story and a good
  close. Check both lists before you write that anyone is back.

## Restrictions

Still no professional teams, no draft order, no pick numbers, no "mock draft".
Round grades from `ourTier` only. You may say a player "is expected to hear his
name early" only if his tier says first round; you may not say when, where, or
to whom.

Do not write a quote from a departing player or a coach. Do not report a
decision as final when `likelihood` says it is not.
