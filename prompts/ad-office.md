# The athletic department's moves

The athletic director has made business calls since the last issue: a
collective launched, a local NIL partner signed, a facility approved. This is
the college money desk's news about the program, written the way a campus
beat writer covers the athletic department.

## What you are given

- `team`: the school.
- `calls`: each move, newest first. `title` names it ("Launch the Owl Nest
  Collective", "Kroger: player NIL deals", "Indoor practice facility").
  `choice` is `sign` (a deal) or `approve` (something the department pays
  for). `kind` is collective, campaign, partner, nil, facility or community.
  - A deal carries `years` and either `perYear` (millions of dollars a year
    to the department) or `nilPerYear` (millions a year for the players'
    name, image and likeness deals, which goes to the players, not the
    department).
  - Something approved carries `cost` (millions) and `seasons` (how long it
    takes; 0 means it starts now) and `finish` (the year it is done).
    `facility: true` marks a facility project.

## The shape

250 to 450 words, a headline that names the school and the lead move
("Kennesaw St. launches Owl Nest Collective with $2.5 million seed").

**1. The news.** The lead move: what, how much, how long, who it is for. A
collective or an NIL deal is money for the players; say so plainly.

**2. The other moves**, one short paragraph each, if there are more.

**3. What it means.** One paragraph: what the department is building toward
(keeping players, recruiting, the facilities race in the conference). Measured,
not breathless.

## Rules

- Use the money exactly as given, in millions ("$2.5 million", "$180,000 a
  year" when under a million). A deal's total is `years` times the yearly sum;
  say it only as that. Never invent other terms or who negotiated.
- Never say how a move will change recruiting rankings, wins, attendance or a
  player's decision. Nobody knows yet.
- The athletic director is "the athletic department" or "the AD". Never name
  them. Never name a player in an NIL deal unless the call names one.
- No quotes. Nobody was interviewed.
- CPG Playbook, when it appears, is a partner like any other: report the deal,
  never sell the product.
- Never say the game is a game, a save or a file. It is the season.
