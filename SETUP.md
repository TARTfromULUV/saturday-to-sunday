# S2S — setup

A weekly sports site about your CFB 27 dynasty and Madden 27 franchise,
generated on your PC and read on your phone.

The save file lives on your PC, so the generator runs there. Your phone is the
reader, and the Generate button on it just tells the PC to go.

---

## 1. Install (once)

1. On the GitHub page, click **Code ▸ Download ZIP**. Right-click the zip ▸
   **Extract All**, somewhere you will keep it (Documents is fine).
2. Double-click **`S2S.bat`** in the unzipped folder.
   - *"Windows protected your PC"*: click **More info ▸ Run anyway**. Windows
     says this about any script that came from the internet.
   - The app runs on **Node.js**. If it is missing, the launcher offers to
     install the LTS version with winget (built into Windows 10 and 11), or
     opens [nodejs.org](https://nodejs.org) so you can install it yourself
     with the defaults. Then double-click the .bat again.
   - The first start installs what it needs and takes about a minute. After
     that it starts in a couple of seconds.
3. Your browser opens on the app. **Settings** has a **Get set up** checklist:
   add your save, pick your team, choose who writes, put it on your phone,
   turn on the automations. The rest of this guide is the detail behind each
   step.

The window that opens with it prints two addresses:

```
  On this PC:
    http://localhost:7717/?k=8f3c...

  On your phone (same wi-fi):
    http://192.168.1.42:7717/?k=8f3c...
```

**Leave that window open** (or turn on **Settings ▸ Start with Windows**).
Closing it stops the app.

Git users can `git clone` instead of downloading the zip; everything else is
the same, and updates arrive with `git pull` (or automatically, below).

## 2. Put it on your phone (once)

**Settings ▸ On your phone** shows a QR code. Point the phone's camera at it
and tap the link (the phone must be on the same Wi-Fi as the PC). Then:

- **iPhone:** in Safari, Share ▸ **Add to Home Screen**. It has to be Safari;
  Chrome on iOS cannot install a home-screen app.
- **Android:** in Chrome, ⋮ ▸ **Add to Home screen**.

You now have a S2S icon that opens full screen.

The `?k=...` on the end of the link is your key. Open the link once and the
phone remembers it; you never type it again. It is what stops anyone else on
the network from reading your site or spending your model credit, so only send
the link to yourself.

## 2b. Turn on the automations

**Settings ▸ Automatic:**

- **Write new weeks automatically:** the PC watches your save, and the moment
  you advance a week it writes the issue, so it is waiting on your phone.
  It uses your writer's plan the same as tapping Generate.
- **Update the app automatically:** checks GitHub every few hours. When a new
  version is out it downloads it (a git pull for a clone, the zip for a
  download), restarts between issues, never in the middle of one, and keeps
  your leagues and issues exactly as they were. **Settings ▸ Update log**
  shows what changed.
- **Desktop shortcut** and **Start with Windows.**

## 2c. On a Mac

The app runs on a Mac too: double-click **`S2S.command`**
instead of the .bat (the first time, right-click it ▸ **Open**, since macOS
asks about any script from the internet). It offers to install Node.js with
Homebrew, or opens nodejs.org.

The games themselves run on a Windows PC or a console, so a Mac needs the
save files from somewhere: copy the save folder over, or keep it in a synced
folder (OneDrive, Dropbox, iCloud) and point **Add a save ▸ Browse folders**
at that. If the PC is on, the simpler setup is to run the app on the PC and
just read it on the Mac, in the browser, like the phone.

## 2d. Your phone away from home (and other computers)

The home link only works on the same network as the PC. **Tailscale** fixes
that: a free private network between your own devices, with nothing opened to
the internet.

1. Install Tailscale on the PC (tailscale.com/download) and on the phone (App
   Store / Play Store), and sign in to both with the same account.
2. Restart the app. **Settings ▸ On your phone** now leads with **Anywhere**:
   a QR code for the PC's Tailscale address (it starts with 100.).
3. With Tailscale switched on, scan it, open the link in Safari (or Chrome on
   Android) and add it to the home screen. Replace the old icon.

**Once Tailscale is set up, use the Anywhere link for everything.** It works on
home Wi-Fi, any other Wi-Fi and cellular, and on any other computer (a Mac, a
laptop) signed in to the same Tailscale: open the same link in its browser.
At home Tailscale connects directly, so it is no slower. The PC just has to be
on with the app running (Settings ▸ Start with Windows).

If the link will not load, allow **Node.js** through Windows Firewall
(Start ▸ "Allow an app through Windows Firewall", tick Private and Public).
Do not use a port-forward or a public tunnel: the key in the link is the only
thing standing between your site and anyone who finds it.

## 3. Point it at your save (once)

Open the app, tap **Settings ▸ Find my save**. It scans the usual places and
checks each file's header, so it finds your saves whatever you named them and
wherever EA put them. On a normal install that is:

```
C:\Users\<you>\Documents\EA SPORTS College Football 27\saves\
```

Every save is listed, newest first. Pick the one you want.

**Browse folders** opens a file browser, served by the PC, that works from the
phone as well. It starts in the folder where your saves were found. Files that
are not dynasty saves are shown greyed out rather than hidden, so you can tell
"my file isn't in this folder" apart from "the app is filtering it out".

Whichever file you pick is re-read every time you tap Generate, so you set it
once and then just keep saving over it in-game.

### Point it at the autosave — recommended

You do not have to save manually at all. CFB 27 writes an autosave the moment a
sim finishes and the game lands on the next week, and that file is in the same
folder and shows up in the same list. Pick it and the weekly routine becomes:
**sim the week, pick up your phone, tap Generate.** No manual save, no
remembering to overwrite the right file.

It is also the only way to get a proper story about **your own game** — see
"Your own game" below.

This works because of how the app reads a save in the first place. A save taken
at week 9 contains week 9's completed games with their full box scores, and the
autosave is written at exactly that moment, so it is the same data the manual
save would have. Saves are matched to a dynasty by an id inside the file's
header, never by filename, so the autosave and your manual save are recognised
as the same dynasty and land in the same archive — you can switch between them
whenever you like without splitting your issues in two.

One caveat, and the app handles it: the autosave is around ten megabytes and
the game rewrites the whole thing, so for a second or so after a sim the file
is half-written. Generate waits for the file to stop changing before it reads,
so tapping the button the instant a sim ends is safe.

What it does NOT do is generate on its own unless you ask it to. Writing an
issue costs model time, so that is a setting: **Write new weeks
automatically** (2b above). Off, you tap Generate.

### Your own game

There is one thing the app cannot get any other way, and it is the thing you
most want to read about.

CFB 27 keeps drive-by-drive detail, box scores and standouts for the **current
week only**, and wipes them when you advance. That is fine for the fifty-odd
games the computer plays — it resolves those the instant you advance, so a save
read at week 9 has all of them in full. Your own game is the exception. The app
is meant to be run *before* you play, so it can preview your game without
spoiling it, which means the copy it files for that week is missing exactly one
result: yours. By the time that week comes up for coverage, your game is a final
score and a quarter line and nothing else.

Except the game writes a save at the one moment that detail exists: **it
autosaves when you finish a game.** So S2S watches that file, and when
your game flips from scheduled to final, it takes the week again and files the
detail before the advance destroys it. That is what turns "Boise State 27,
Alabama 24" into a story about the drive that won it.

It is on by default, per dynasty, under **Settings ▸ Watch the save for my
game**. Two things worth knowing:

- **It only works if your save file is the autosave.** A manual save does not
  change when you finish a game, so there is nothing to notice. The setting
  tells you if you have picked one.
- **It never writes anything and never spends a cent of model credit.** It
  checks the file about every five seconds — a timestamp, not a read — and when
  the file changes it does a one-second look at three small tables. The full
  ten-second read happens once per game you play. If you would rather nothing
  read your save while you are playing, turn it off; everything else works
  exactly as before, your own game just arrives as a scoreline.

A side benefit: if you sim four weeks before opening the app, it files each one
as it goes instead of losing three weeks of box scores.

## 4. Choose how pieces get written

**Settings ▸ How pieces get written.**

| Option | What it costs | Setup |
|---|---|---|
| **ChatGPT Free** (the default) | Nothing. Uses your ChatGPT account's Codex allowance. A full season uses about 22% of Free's monthly limit at 4 articles per issue, so roughly 4 seasons (120+ issues) a month. | Run `install-chatgpt.bat` and sign in with your ChatGPT account, then **Check again** in Settings. |
| **ChatGPT Plus** | Nothing extra. Uses your Plus plan's Codex allowance, which is larger than Free's. | Same as Free: `install-chatgpt.bat`, then **Check again**. |
| **Your Claude plan** | Nothing extra. Writes with **Opus 5.5**, the most accurate writer the app has, on your plan's usage rather than your chat limits. **Needs Claude Pro or higher** — the free plan does not include this. | Run `install-writing.bat` and sign in when it asks, then **Check again** in Settings. |
| **Preview** | Nothing. Placeholder text with real figures. | Nothing. Use it to check the app works. |
| **Export prompts** | Nothing. | Writes the prompts to disk to paste into a model by hand. |
| **API key** | Pay per token — see the numbers below. Appears in the menu once the key is set. | Set `ANTHROPIC_API_KEY` in your environment — **step by step in `API-KEY.md`**. |

Start on **Preview** and generate one week. You will see the whole thing work
in about ten seconds. Then switch to a real one.

### Which writer is most accurate

Every route was blind-judged on the same 16 pieces from a real dynasty (weeks
1-4, four pieces an issue), with judges checking each claim against the
week's data. Accuracy out of 10:

| Writer | Accuracy | Notes |
|---|---|---|
| Your Claude plan, Opus 5.5 | **7.8** | Won all 16 head-to-heads against Sonnet 5. Same speed as Sonnet. |
| ChatGPT Free | 6.2-7.5 | Beat the 1.0.0 Claude output in every round; voice trails Claude's by about a point. |
| Your Claude plan, Sonnet 5 | 3.6-4.9 | The lighter option in Settings ▸ Writing model. |

Every writer gets the same data, and 1.1.0 cleaned that data up (records are
recounted from the games actually played, streaks are spelled out, every
number the writer might be tempted to work out is given to it). The
difference above is what the models do with it.

### What an issue actually costs

On a subscription — Claude or ChatGPT — an issue draws on the plan's usage
and there is no bill. The figures below are what the same issue costs at API
list prices, which is also the best available measure of how much plan usage
it takes. Measured on the same 16 pieces (four issues, four pieces each):

| Writer | Tokens in | Tokens out | Per issue at API prices |
|---|---|---|---|
| Opus 5.5 (Claude default) | ~180K | ~13K | **~$1.00** |
| Sonnet 5 | ~210K | ~10K | ~$0.55 |

So Opus 5.5 uses roughly twice what Sonnet 5 does per issue, for about twice
the accuracy. Switch **Settings ▸ Writing model** to Sonnet 5 if your plan is
running low.

You do not have to take this table's word for it: after every run the app
prints exactly what that issue used — tokens in, tokens out, and what they
cost (or would cost) at API prices. The number is measured from the model's
own usage report, not estimated.

API-key runs cache the shared house-voice prompt automatically, so after the
first pieces of a run the biggest repeated block bills at a tenth of the
input price — the table above is the uncached worst case, and real runs come
in a few cents under it.

Two ways to spend less, both one setting:

- **A different model.** Settings ▸ Writing model switches to Sonnet 5
  (about half the usage, less accurate). Off the menu, any model id works
  via the `DYNASTY_MODEL` environment variable or `--model` on the CLI.
  Prices and models change; check the current list at platform.claude.com
  before trusting this paragraph.
- **Fewer articles.** "Articles per issue" in Settings is most of the bill —
  measured on a real playthrough, an issue costs roughly in proportion to
  its piece count. The default is 4: the Column and Expert Picks every
  week, plus two slots that rotate through whichever desks earned them
  (once-a-year stories like signing day and awards night always take a
  slot when they land).
  Turn it down and the site gets cheaper almost linearly; every section
  keeps its live data regardless — the setting only decides how many pieces
  get written.

## 5. If you use a coaching carousel tool

Most leagues run coaching changes through a community tool that finalises them
one week after the National Championship and saves them into the dynasty file.
S2S knows this: it holds coaching-change stories until **two weeks
after the National Championship**, so the data is real and the season recap
still gets its own week.

Nothing to configure. If your league's tool runs on a different schedule, set
`carouselDelayWeeks` in `dynasty-data/dynasty-<id>/config.json`.

For this to work the app needs to have seen at least one week of the season
that just ended, since the carousel is found by comparing who coaches where now
against who coached where then. Ingesting every week is the habit that makes
the whole site work anyway.

## 5b. The photographs

The app ships with `app/team-images-library/`: real action photographs for all
138 programs, 1600x900, with a thumbnail of each. They are what the front page
uses instead of the old colour scorecard.

You do not have to do anything. If the folder is there, photos appear; if you
delete it, every hero goes back to the two-colour scoreboard and nothing else
changes.

How a photo is chosen:

- The front-page lead follows **The Column's headline**. Whichever team is
  named first in it is the game the issue is leading on, and the photo comes
  from that game's **winner** — including when the headline is about the team
  that lost.
- Each game story gets its own game's winner, at thumbnail size on the card
  and full size at the top of the story.
- A team's photos run in a cycle: none of them repeats until every other photo
  of that team has had a turn. When a team runs out, that issue gets the
  colour scoreboard and the cycle starts over.
- Which photos have been used is kept in `dynasty-data/dynasty-<id>/
  team-images-usage.json`. Delete it to start every rotation fresh.
- Regenerating a week keeps the same photographs it published the first time.

### NFL photos

The NFL side reads the same kind of library from
`app/team-images-library-nfl/` and ships with it the same way: nothing to set
up, and it arrives with updates. A club with no photos keeps the team-colour
art. Updates never touch photos you add yourself.

**For whoever maintains the app** (a PowerShell window in the app folder):

- `tools\nfl-images-build.bat` (or `node tools\nfl-images-build.mjs`) finds
  10 landscape game photos a club with Brave Image Search, the source the
  college library came from: a search per situation (the quarterback, the
  run, the catch, the defense, the kicker, celebrations, the fans), so game
  stories can pick the winner's action or celebration shot. It keeps only
  photos whose title is about that club, leaves out black-and-white shots,
  logos, cut-outs and wallpaper or merchandise sites, and shrinks them to
  1600x900. Needs a free Brave Search API key
  ([brave.com/search/api](https://brave.com/search/api)), asked for each run
  and never saved; and the photo checker, which the .bat installs (from
  PowerShell: `npm.cmd install --no-save sharp`). Clubs with 10 are skipped,
  so a second run only fills gaps; `--redo` starts over.
- Look through them (the folder, a club per subfolder). Delete a bad one with
  `node tools\nfl-images-build.mjs --remove no/abc123.webp`: it is remembered,
  so no rebuild brings it back. `--prune` re-checks the whole library.
- By hand: put .jpg/.png/.webp files in a club's folder (`no/`, `saints/` or
  `new-orleans-saints/`) and run `node tools\nfl-images-index.mjs`.
- `tools\nfl-images-ship.bat` commits and pushes the library, and every copy
  gets it with its next update.

Where each found photo came from is listed in
`app/team-images-library-nfl/credits.html`.

## 6. Every week

The routine, if you are pointed at the autosave:

1. Play your game. (The app quietly files it the moment it ends.)
2. Advance the week.
3. Tap **Generate**.

That is it. Generating before you play works too — you get the same issue,
since it covers the week you already advanced past either way. The difference
is that playing first means your own game from that week has been captured in
full, so next week's issue can write about it properly.

It takes a few minutes. **You can lock your phone and walk away.** The run
happens on the PC; the app is only watching it. Come back and the issue is
there, with a note saying what was published.

**On a bye week**, pop into Recruiting and back out before you advance. The
game only rewrites its autosave when you do something — playing your game
usually does it — and that one visit is what lets the app capture the week's
drive-by-drive detail before the advance erases it. Skip it and the week
still publishes fine, just with box scores instead of drive charts.

**The very first Generate publishes nothing.** It captures the week and says so.

That is not a bug, it is how the app avoids spoiling you. A save sitting on
week 9 does not mean week 9 has happened: the game resolves every AI result the
moment you advance and leaves YOUR game pending, so the file holds this week's
scores while the schedule screen still shows you kickoff times. So an issue
covers the last week you actually finished, and it is written from the snapshot
taken when that week was current — which the first run has no way to have. From
the second Generate on, every run publishes.

An issue always covers the week **before** the one your save is sitting on,
because that is the last week the game has actually shown you. Playing your own
game does not change that — CFB 27 hides everyone else's scores behind kickoff
times until you advance, so a week you have not advanced past is a week you
have not seen. The picks column previews the week you are on; everything else
reports the week you just finished.

**Weeks you can skip.** The last two offseason weeks, Training Results
(week 28) and Encourage Transfers (week 29), come after National Signing Day
(week 27) and have little new to write about: rosters settle and the classes
are already signed. Skipping Generate on those two weeks saves the cost of
two issues. Advance straight through to the new season and Generate as usual:
the app picks the new year up without them, files it under the same dynasty,
and the preseason issue comes out the same either way.

---

## Updating the app

When a new version is out, a **red dot** shows on the Settings gear (and on the
Settings tab on the phone), and a card at the top of Settings says *A new
version of S2S is ready*. Tap **Update now**: the app downloads it, waits until
nothing is being written, and restarts. Reload the page after a minute.

To skip the tap, tick **Settings ▸ This device ▸ Update the app automatically**
(the last set-up step, *Turn on*, ticks it too): new versions then install
themselves the same way, once nothing is being written.

Your dynasties, issues and branding are **safe**: they live in your user data
folder (see "Where things live"), not inside the app folder, so updating never
touches them. The one exception: if you created a `portable.txt` file to keep
data inside the app folder, keep the `dynasty-data` folder if you ever replace
the app folder by hand.

## Reading it away from home

Two ways, depending on what you want.

**Offline reading works already.** Every issue you have opened is cached on the
phone. On a plane, on the subway, with the PC asleep — the app opens and the
last few weeks are there. You just cannot generate a new one.

**To generate from anywhere**, put the server behind a Cloudflare Tunnel. It is
free and does not need a domain or a router change.

```powershell
winget install --id Cloudflare.cloudflared
cloudflared tunnel --url http://localhost:7717
```

That prints a public `https://something.trycloudflare.com` address. Open it on
your phone **with your key on the end**:

```
https://something.trycloudflare.com/?k=<the key from the console>
```

Add that to your home screen instead and it works on cellular. The key matters
a lot more now: the port is on the public internet, and without it anyone who
found the address could spend your credit. Never share the link with the key.

Know what the key unlocks before you tunnel. It is not just the reader: the
in-app save picker can list any folder on the PC and read the first few hundred
bytes of any file (that is how it finds and identifies saves). On your own
wi-fi that is nothing; through a tunnel it means anyone holding the key can
browse your PC's folder names and file headers. Treat the keyed link like a
password, and if it ever leaks, delete the `token` line from `server.json` in
your data folder and restart — a new key is minted and every device re-pairs.

The free tunnel gets a new address each time you start it. For a permanent one,
a named Cloudflare tunnel is also free but wants an account and a domain.

---

## When something goes wrong

**"Can't reach your PC"** — the PC is asleep, off the wi-fi, or the console
window got closed. The phone shows cached issues in the meantime.

**"Need the key"** — open the `?k=...` link from the PC console once more.

**"Your Claude plan" is greyed out** — Settings says which half is missing and
prints the exact command. Two packages are involved: the **Agent SDK** does the
writing (`npm install` gets it on first run), and the **Claude Code CLI** holds
your sign-in and must be installed globally. `install-writing.bat` does both
and then signs you in. After it finishes, tap **Check again** — no restart
needed.

**A generate says Claude Code "does not support this model"** — the copy of
Claude Code bundled inside the app is older than Opus 5.5. The launcher
normally refreshes it when you update; if you started the app another way,
run `install-writing.bat` (or `npm install` in the app folder) once.

**`claude login` is not recognised** — the CLI installed but is not on PATH in
that window yet. Close it, open a new one, and run `install-writing.bat` again.

**"ChatGPT Free/Plus" is greyed out** — Codex isn't installed or isn't signed
in. Run `install-chatgpt.bat`: it installs Codex (OpenAI's command-line tool,
included with every ChatGPT plan) and opens the ChatGPT sign-in. Then tap
**Check again**. If a generate says the ChatGPT usage limit was reached, the
plan's Codex allowance is used up until it resets; the usage page at
chatgpt.com/codex/settings/usage shows when.

**Port already in use** — you have a copy already running, or something else
took the port. Start it with `node start.mjs --port 7718`.

**The app looks like the old version after an update** — Settings shows the
version it is running and says "out of date" if the PC has a newer one. It
should fix itself on the next open; if it does not, **Settings ▸ Clear cache
and reload**. On the phone you can also remove the home-screen icon and add it
again.

**The scan finds nothing** — paste the path by hand. If you want to check a
specific folder, `http://<address>/api/saves?k=<key>&dir=C:\some\folder` scans
just that one.

**A save you know is real shows as greyed out** — the browser says why next to
the name: "could not open it (is the game running?)", "too small", "not an EA
save container", or the header text it could not parse. A file the app can see
is one of the game's saves but whose header it cannot read is still selectable,
marked with a question mark; picking it works if the save itself parses.

To report one, open this and paste what it prints:

```
http://<address>/api/saves/diagnose?k=<key>&path=<full path to the file>
```

It returns the printable first 512 bytes of the header, which is all that is
needed to add support for a new save format.

**"Some data could not be read"** — a game patch changed a table's layout and
the save reader has no schema for the new one. The app names the table and what
it costs, and keeps going with everything it CAN read. The known case is
`Coach`: a patch took it from 137 fields to 138, so on those saves there are no
coaching stories (hot seat, carousel, coach rankings, year-one) and no coach is
named in any piece. Games, players, stats, the draft board, polls, injuries and
rivalries are unaffected. There is no workaround from your side; it needs a
schema for the new layout.

**It says a piece mentioned the professional league** — the draft pieces are
not allowed to name pro teams, because there is no pro league in the save. The
warning means one slipped through the prompt. Re-run that week or edit the
piece; it is telling you it caught something, not that it broke.

---

## Where things live

```
dynasty-data/
  server.json                  your key
  dynasty-<id>/
    config.json                which save, which team, your settings
    weeks/y0w08.json           the parsed week — this is the irreplaceable part
    articles/y0w08.json        what was written
    issues/y0w08.json          what the phone reads
    site/y0w08.html            a standalone page you can open or share
    prompts/y0w08/             the exact prompts used
```

`weeks/` matters more than it looks. The game overwrites scoring summaries on
every advance, so a week you never ingested is gone for good. Back up
`dynasty-data/` with your saves.

## Running it as a service

To have it start with Windows: press `Win+R`, type `shell:startup`, and put a
shortcut to `S2S.bat` in the folder that opens. Install `systray2`
(`npm install systray2`) and it minimises to a tray icon instead of sitting in
the taskbar as a console window.
