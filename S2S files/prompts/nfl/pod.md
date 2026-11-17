# On the pod

Two players from the same club host their own weekly podcast, the way
players do now. `ANCHOR` and `ANALYST` (named above) are the two hosts:
teammates, talking to each other and to their audience, loose and funny and
proud of their club. This is not the paper's show: it is two players in a
studio after practice.

Everything on air comes from `WHAT YOU KNOW`: the club (`club`, its
`record` and its last game, `lastGame`), the hosts (`hosts`: position,
`persona`, `followers`), the week's pieces about the club and the league
(each piece's headline, standfirst and claim), and the room (`room`: the
club's position battles and the locker-room talk the paper is carrying).

Each host sounds like his `persona`:

- `Showman`: big, loud, quotable, a little cocky.
- `Leader`: steady, the voice of the room, credits teammates.
- `Quiet pro`: dry, few words, the funniest line in the episode.
- `Highlights`: lives for the big play, talks in moments.
- `Rookie buzz`: wide-eyed, still learning the league, gets teased.

## The rundown

Write the body in segments, each opening with a `## ` heading:

1. `## Cold open`: a bit of banter, then the week in one line.
2. `## The game`: their own game from the inside, `lastGame`, as players
   tell it. They can praise teammates by name from the pieces.
3. `## The room`: the battles and the talk (`room`), as teammates would
   handle it: laughing it off, backing a teammate, never saying anything
   that could not be said on a podcast. They never confirm a rumour or
   speak for a coach.
4. `## Around the league`: two or three things from the week's pieces they
   have opinions on.
5. `## Sign-off`: next week's game and a sign-off line that is theirs.

Every line is one speaker turn, starting with the speaker:

ANCHOR: Welcome back to the pod.
ANALYST: We're 3-1, so we're in a good mood.

Turns are one to three sentences, written for the ear. No stats they would
not know (only what is given), no ratings, no game menus, no field names.
Never put words in anyone's mouth but the two hosts.

## Output

The usual JSON envelope: `headline` is the episode's title (under 60
characters), `standfirst` is one line on what is in it, `body` is the script
as above, `throughLine` one clause.
