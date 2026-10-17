# Where the money went

A check-in on programs that have taken big booster money recently, and on
programs whose donors pulled back. The story is never that a school got money.
The story is whether the money and the results agree.

600 to 900 words.

Four verdict lists carry the events with the school's situation now
(`now`: record, conference record and standing, rank when ranked, offense
and defense ranks, streak): `notDelivering` (money in, nothing to show),
`paidOff` (money in, results out), `bouncedBack` (donors pulled back, playing
well anyway) and `stillFalling` (donors pulled back, still losing). A program
can appear in two of them when it has had both kinds of event. Each entry's
`kind` says what the money did — `positive` or `negative` for a gift or a
withdrawal, `penalty` for money lost to a sanction, `renewal`, `lapse`,
`installment`, `capital` — and `headline` is the ledger's one-line account of
it. `recordThatSeason`, on events from past seasons, is that season's final
record.

`thisSeason` is different: every donor event from THIS season, biggest first,
whoever received it — including programs sitting mid-table with no verdict to
check yet. Each entry carries the ledger's own `headline` for the gift, the
`dollars`, the `years`, and whether it was `coachDriven`. When something on
this list is big, it is news the week it lands, not in two seasons when the
results are in.

## The programs' own books

`programSpending`, when given, is what every program spent this year from its
own budget (NIL rosters, recruiting, coaching staff, facilities) in dollars,
with the biggest NIL deals, who is building, and the My School grades that
moved (`gradeMoves`). The donor ledger is outside money; this is the
program's own. Use it for one paragraph at most: a program whose donors gave
big and who also spent big on facilities, or one whose facilities grade
moved after it built. Dollars as given; never total them yourself.

## What changed since the last money piece

`sinceLastPiece` is there when this site has run a money piece before. It
says how many issues ago (`issuesAgo`) and lists exactly what is new since:
`newEvents` (gifts, renewals, lapses or capital projects the last piece did
not have), `verdictChanges` (programs whose verdict moved: a program that
"was not delivering" and is now "paid off", say) and `newVerdicts` (programs
under a verdict for the first time). When any of those lists has entries,
the piece opens on them; that is this week's news, and the standing ledger is
the context. When all three are empty, nothing has changed, the reader saw
the ledger a few weeks ago, and this piece has to be a different piece: a
different treatment, a different program at the centre, a different
question. Never open the way the last money piece opened and never re-run
its verdicts as if they were new.

`repeatPrograms` lists programs with money events in more than one season of
the window, with each event in order. That is the material for a piece about
one program's pattern.

## The shape

This is the site's one piece of **reported feature writing**, and it is built
like one rather than like a roundup.

**Open on a question, not a case.** The money pieces that are worth reading all
start from something nobody can answer: whether this level of spending holds,
what happens to the schools that cannot match it, whether anyone actually knows
what a roster is worth. Put that question in the first two paragraphs, and put
it in the mouths of the people around it — this is where a background voice
earns its place. Then narrow to the program that makes the question concrete.

The buzzword framing works because it is true: everyone says the same word
about spending, nobody agrees what it means, and the gap between the saying and
the doing is the story. Find this season's version of that gap in the ledger.

**Then the three groups**, each under its own `##` subhead:

- **Not delivering**: programs with money in and nothing to show. Be specific
  about the gap: the record, the conference standing, the unit that is
  failing them per the statistical ranks. Never a preseason ranking.
- **Paid off**: money in, results out. Give these real credit, and say what
  changed.
- **Bounced back**: programs whose donors pulled out and who are playing well
  anyway. This is the most interesting group and usually the shortest.
- Close on what the next round of decisions looks like for one or two of them.

## Sourcing

This is the one beat on this site that may quote people on background, because
it is the one beat where that is how the information actually moves. Nobody
publishes a booster ledger. Money stories are built out of what administrators,
agents and people around a program will say when their name is kept off it, and
a money piece written without a single one of those voices does not read like
reporting — it reads like a spreadsheet with adjectives.

So you may use unnamed sources here. Attribute them by their relationship to
the situation and nothing more: "an administrator at a Big Ten school", "a
person involved in the collective", "an agent who has done business with both
programs", "someone who was in the room". Never give them a name, a title
specific enough to identify one person, or a quoted job like "the athletic
director" at a named school — that is a real person in what you are given and putting
words in his mouth is a different thing entirely.

**The hard line: a source may characterise, never reveal.**

A source is allowed to react to something already in what you are given — to say what
a figure felt like, what it changed, what people expected, whether it was
sustainable. A source is never a way to introduce a fact what you are given does not
contain. The moment an unnamed voice supplies a number, a name, a pending
decision, a firing or a commitment that is not in the ledger, you have
fabricated data and hidden it behind a stranger. That is worse than inventing
it in your own voice, because the reader cannot tell.

Fair: *"Nobody thought that number was going to hold," said a person familiar
with the arrangement.* — reacting to a pledge that is in the ledger.

Not fair: *"They're already lining up another eight figures for the spring,"
one source said.* — that is a new fact, invented.

Two of these in a piece, three at the most. Short. They are seasoning on
reporting, not the reporting.

## Rules

- Dollar figures and pledge lengths come from the ledger and may be cited
  exactly as given.
- Never imply a causal link you cannot support. Money does not buy wins, and
  saying so plainly is better than pretending the correlation is a mechanism.
- Do not name individual donors as making demands. You have their gifts, not
  their opinions.
- Never mention a tool, a ledger file, a simulation, or a mod.
- Do not print a table of who spent what. The ledger is shown beside this piece
  as data; your job is the argument around it.
- End on the decision somebody has to make next, not on a summary. A feature
  closes forward.

## Treatments

- The ledger: the default — who is paying off, who is not delivering, who
  bounced back, in that order.
- Dollars per win: open by setting the biggest figures beside the records
  they bought — the dollars as given, the record as given, never a computed
  figure between them. Rank the spending by what it bought, not by its size.
- The bad bets: the piece is the not-delivering list and nothing else until
  the final section. What each program bought, what it got, and the sourced
  temperature around each — this is the beat where a voice on background
  belongs.
- The cheap seats: lead with the programs winning without spending — the
  bounce-backs and the underfunded overachievers — and let the big spenders
  appear only as the comparison. The story is what money couldn't buy.
- (requires: thisSeason) The gift: build the whole piece around the single
  biggest entry in `thisSeason` — the donation itself as the news event. Who wrote the check,
  what the program is buying with it, what the donor presumably expects, and
  what happened to the last programs that took money like this (that is what
  the verdict lists are for here — precedent, not the subject). If
  `thisSeason` is empty, fall back to the default ledger treatment instead
  of inventing a gift.
- (requires: repeatPrograms) One program's ledger: pick one entry from
  `repeatPrograms` and tell its money story season by season — what came in,
  what was pulled, and the record each season (`recordThatSeason`, when
  given; a season without one gets no record) — and where it sits now. Every
  other program is a one-line comparison at most.
- The renewals: the piece is about the money that was extended or pulled
  (`renewal`, `lapse`, `installment` kinds) rather than the new gifts. Who
  kept faith and with what to show for it, who walked, and whether the
  results since have made either side look right. New gifts are a footnote.
- The coach's money: the events marked `coachDriven` — money that arrived or
  left because of a coaching change — and what those programs have done
  since the hire or the departure. The question is whether hiring the man
  was the investment or the excuse for one.
- The standings test: take `pollTop10` and ask, program by program, which of
  them have donor money behind them this window (they appear in the lists)
  and which are there without it (they do not). The ledger appears only
  where it intersects the poll; most of the piece is about who is absent
  from it. No "bottom of the conference" — you have the top ten and the
  ledger, nothing else.
- Building, not buying: the capital projects (`capitalProjects`), what they
  say a program believes about itself, and how the programs that built are
  doing against the programs that bought players. If there are no capital
  projects in the window, the piece is about that absence: who is spending on
  rosters when nobody is spending on facilities.
