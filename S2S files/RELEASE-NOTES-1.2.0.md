# Vintage ESPN App 1.2.0

Box scores, player cards, a preseason issue, and a lot of fixes under the hood.

## New

* Box scores: tap any score on the ticker or the Scoreboard for the line score, team stats, scoring summary and every player's line. Box scores are kept forever, even after the game forgets them.
* Player cards: tap a name in any article, box score or table. Bio, season-by-season stats with the school he played for, a game log, a Pro Day sheet with position averages, and a scouting note with strengths and weaknesses.
* Player portraits: link the MyDynasty portrait package in Settings and faces appear on the cards (link the unzipped folder in Settings). Silhouettes otherwise.
* Standings: every conference's table, as of the games the issue reports.
* The first issue of a season carries the Preseason Top 25, a playoff field with a named champion, the best units in the country and the best players at every position. The two rankings pieces rotate through Stats \& Info in season.
* Stats \& Info shows scoring offense and scoring defense; every "No. 12 offense" in an article now means points per game.

## Fixed

* The save watcher stopped capturing games once a save's header id changed (which the update caused it to change). It now trusts the league fingerprint, captures your game again when its player stats land, and captures any week whose finished games outnumber the ones on file.
* Player stats for games nobody played (championship weekend, byes) are rebuilt from the season's stat rows instead of being lost.
* Articles and the Scoreboard use the committee's ranking once it exists, and the Rankings page's Movement tracks the committee too.
* Playoff weeks only run playoff game stories, and every round gets its piece.
* The draft board is anchored on talent and position, grades production as a composite (touchdowns and takeaways count), and blends with the last board so the first round stops reshuffling.
* The recruiting board shows where a hard-committed prospect is going.
* The front page's poll box is the Staff Top 10, carried from the last ballot on weeks the column skips it.
* Settings page has been shortened and cleaned up.

## Updating

Download the zip, close the app, unzip over your folder, and restart. Your dynasties aren't touched. Player cards, norms and standings fill in from your next generated week.

