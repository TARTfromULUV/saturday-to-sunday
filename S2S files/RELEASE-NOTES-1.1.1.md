# Vintage ESPN App 1.1.1

A content pass. Every article type was checked against the data it is actually handed, and the places where the writer was being set up to guess were fixed. Plus two new pieces and a bigger draft board.

## New

- Programs on the rise. Once a season, the Coaching Carousel section runs a piece on the programs whose results have climbed or slid furthest from their own recent past, with a season-by-season chart for each one. It reads the save's full year-by-year history, which the app had never used before.
- The new faces. In the preseason (or the first two weeks), a piece on the classes that actually arrived: your school's whole class with every transfer and where he came from, every five-star transfer in the country, who added and lost the most through the portal, and the five-star freshmen. Works whether recruiting was done in-game or with an auto-recruiting tool.
- The field is set. The week the conference championships are played, the Playoff piece now reports the real twelve-team bracket the game drew, with the seeds and first-round games. The National Championship gets its own round story, which it never did.
- Draft board shows all 224 ranked players, with a Round 1 / Rounds 2-3 / Day 3 toggle, each player's rank last week, and sacks and tackles for loss on defensive front lines.
- Prospect highlights are now a ranked list of Star and Elite underclassmen outproducing their class, measured against what is normal at their position (so it is not a wall of quarterbacks). The development trait never shows in the app or reaches the writer.
- Up to three game stories an issue when the Saturday earns them. The Top 25 reaction now runs when the top of the poll moved, not every week.
- Coaching Carousel got more variety: five treatments for the carousel sweep, and the hot seat, year-one review and coach rankings all use each program's last five seasons.
- Business pieces no longer repeat. The money beat runs when something changed since the last one (new gifts, a verdict that moved) and has five more treatments.

## Fixed

- Rankings were off in three ways. Team cards showed last week's poll next to this week's. Resume lines used an opponent's current rank instead of its rank when the game was played, so "beat No. 3 Georgia" drifted to "beat No. 19 Georgia" by December. Conference standings were counted from zero, so every league leader was dropped and the runner-up read as first.
- The Playoff section was blind in November. The game writes placeholder first-round fixtures from week 10 and the app read them as a started playoff, so the CFP piece and projected bracket never ran in weeks 10-15, and a week-14 picks column previewed a first round that never happened. The projected bracket also used the wrong format; it now matches how the game seeds (top four get the byes).
- Hot seat and coach rankings ran in the offseason on a rolled-over coaching table, crediting new hires with the records that got the last man fired. Both are regular-season pieces now, and "worsened this week" only appears after a loss.
- A coach's second season was being written as his first. Career records with fewer losses than one school's total are corrected.
- Scoring timelines that did not add up to the final (extra points folded into the next score) are reconciled, and the fourth-quarter summary is rebuilt from the quarter line.
- Honorees on awards night now all carry their season line (the Heisman winner had none), and a snub argument has the national leaderboards to argue from.
- Draft results compare every pick to the board this site published, and name the seniors who went undrafted instead of leaving the writer to infer it.
- Draft stock measures movement since last issue, not since the last full board, and says when a player moved because others passed him rather than because of anything he did.
- Recruiting notebook: the stars are in words, the weekly count can no longer be smaller than the names listed, and signing day knows who signed.
- The portal piece, the money piece and several others were receiving internal fields (a ledger filename, a production grade, a game trait, raw enum tokens like Win9Games or Count_). All of it is stripped or translated.
- The Expert Picks "rest of the slate" section is written from a real list now, and a one- or two-game week gets a short column instead of padding.
- A treatment that needs data the week does not have (movement with no movement, new entries with none) is skipped for one that fits.
- Transfers are tagged in the data ("transfer from Auburn, first season here") so articles can say where a player came from without guessing.

## Updating

Download the zip, close the app, unzip over your existing folder, and start it again. Your dynasties and issues are not touched. The draft board's last-week marks and the kickoff-rank resumes start building from your next issue, so the first issue after updating will not have them yet.
