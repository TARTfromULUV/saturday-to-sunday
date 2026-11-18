# S2S — FAQ

Common questions before and after you install. Setup instructions live in
`SETUP.md`; this is the short version of everything people ask around it.

---

## Getting started

### What do I need to install?

Nothing by hand. Double-click `S2S.bat`: if Node.js is missing it offers to
install it (or opens <https://nodejs.org>), then installs what it needs on the
first start (about a minute). Your browser opens on the setup: your save, the
writer (**Connect ChatGPT** is one button), then your phone.

Leave the window open while you're using the app; closing it stops the app.

### What do I need to do the writing?

A free ChatGPT account. **Connect ChatGPT** in the setup (or Settings ▸
Writer) opens ChatGPT's own sign-in; your password never touches S2S. Nothing
to pay. For now that's the one writer S2S offers.

### Is there a free version?

It's all free: **ChatGPT Free** does the writing. One full season uses about
22% of Free's monthly limit at 4 articles per issue, so roughly **4 seasons
(120+ issues) a month**, and it never hit a 5-hour limit in testing.

---

## The Front Office (beta)

### What are AD mode and Coach mode?

The Front Office, in a beta download: **Office** in the bottom bar. AD mode is
the athletic director's week (a few calls before kickoff, the paper covers what
you decide). Coach mode is the head coach's: recruiting hours, pitches,
visits, offers, the talent tree. College only, for now.
[BETA-TESTERS.md](BETA-TESTERS.md) is the tour.

### Does S2S write to my save?

Only the Front Office, and only what you Send from it: AD mode's pay, budget
and staff moves, and Coach mode's recruiting moves. It refuses while
the game runs, backs the save up first (the last five, in an `S2S` folder next
to it) and reads every change back, restoring the backup if one doesn't stick.
Everything else S2S
only reads.

### How do I report a bug?

**Settings ▸ Support ▸ Report a problem ▸ Copy diagnostics**, then send it to JJ
with what you did and a screenshot. It never includes your save, a key or a
sign-in.

## Your save

### What save do I point it at?

**The autosave.** Turn the in-game Autosave setting ON and leave it on. The app
reads the autosave after every advance, and that's what keeps your site in step
with your dynasty.

### I accidentally generated the same week twice. Is that a problem?

No. Generating the same week again **replaces** that issue rather than adding a
second one. You won't get duplicate articles, your links keep working, and the
photo that week already used stays the same one.

The only cost is the generation itself: it uses a little more of your ChatGPT
allowance. Nothing to clean up.

If you meant the opposite, advancing twice before generating, that's fine too.
The app writes about the most recent completed week and picks up where it left
off.

---

## Madden and the universe

### Do I need both games?

No. CFB 27 alone or Madden 27 alone works. Add both saves and S2S links them
on its own when there's one of each (otherwise the front page offers **Link**),
and they become one universe: the recruits you sign
become the rookies you draft, and the paper follows them.

### My first Generate didn't publish anything.

That's expected: the first run files the week, and the first issue comes from
the next advance. See [SETUP.md](SETUP.md), section 6.

### Why don't NFL-only players have a face?

Faces come from your college dynasty's portrait pack (through MyDynasty). A
player who came up through your dynasty wears his college face on both his
cards; a player who only exists in Madden gets the blank circle for now.

### I joined my franchise mid-way. Is the history lost?

Madden keeps each club's last five seasons, and the app files them from the
first week it reads, so your team by season and the club records reach back
that far. Super Bowls and awards go back as far as the save keeps them.

### Can I change the Hall of Fame bar?

Yes: Settings ▸ your league ▸ Universe. A higher bar applies to classes from
then on and never takes anyone out.

### Can I turn off the reader comments?

No. Comments are part of every issue, inside the week's piece count.

## Reading it on your phone

### How do I put it on my phone?

**[PHONE-SETUP.md](PHONE-SETUP.md)** has every step. In short: Settings ▸
**On your phone**, pick **Only at home** (same Wi-Fi as the PC) or
**Anywhere** (cellular and any Wi-Fi, with the free Tailscale app), and follow
the numbered steps.

### Why add it to my Home Screen?

It puts an S2S icon next to your apps, and it opens full screen like a real
app. **iPhone:** in Safari, Share (on newer iPhones it's in the ••• menu) ▸
Add to Home Screen ▸ Add. **Android:** in Chrome, ⋮ ▸ Add to Home screen.

### Do I have to use Safari on iPhone?

Use Safari. If the link opened in Chrome or another browser, copy it into
Safari first. Other browsers can add an icon too, but it may open as a normal
browser tab instead of full screen.

### My phone can't connect.

The checklist is at the end of [PHONE-SETUP.md](PHONE-SETUP.md). Most of the
time the PC is asleep or the S2S window is closed.

### My phone isn't showing the week I just generated.

Close the app completely on your phone (swipe it away in the app switcher) and
open it again. It'll resync.

If it still doesn't, check that the PC is on and the app window is still open,
and that the phone can reach it (same Wi-Fi at home, or Tailscale switched on).

### How do I get dark mode?

Settings, inside the app. Phone and PC are set separately, so you can run dark
on the phone and light on the PC if you want.

---

## Cost and updates

### Do I have to check back for updates?

No. The app checks for new versions on its own and shows you a banner when one
is out, with a link to it. Updating is unzipping the new version over your old
folder; your dynasties and settings are stored elsewhere and aren't touched.

### Does this use up my ChatGPT allowance?

Not much: a full season is about a fifth of Free's month at 4 articles an
issue. To write less, lower the pieces a week (Universe ▸ Every week) and turn
SportsCenter off under Writer. Settings ▸ Usage shows this month's share.

---

## The photographs

### Why doesn't the headline photo show both teams?

Because photos of one specific matchup barely exist. The app has action shots
of each program, so it uses a photo of **the winning team** and matches the
first team named in the headline wherever it can. The Column and SportsCenter
stories match their own game; other pieces use the winner of the game they're
about.

If a team has used up all its photos, the issue falls back to the colour
scoreboard graphic for that week, then starts the rotation over.

### Can I add my own photos for a team?

Not through the app. If a program you play a lot is thin on photos, send me a
folder of images and I'll add them to the shared library, credit you, and ship
them to everyone else too.

---

## Windows

### How do I make it start automatically when I log in?

1. Press `Win+R`, type `shell:startup`, press Enter. A folder opens.
2. Right-click `S2S.bat` → **Copy**.
3. In the startup folder, right-click → **Paste shortcut**.

It now starts with Windows.

Two optional tidy-ups:

- **Don't open a browser every login.** The normal launcher opens the app in
  your browser. To start it quietly instead, make a new text file in the app
  folder called `Start quietly.bat` containing:

  ```
  @echo off
  cd /d "%~dp0"
  start "" /min cmd /c node start.mjs
  ```

  and put a shortcut to that in the startup folder instead. Open the app
  yourself at the address the launcher prints, usually
  `http://localhost:7717`, whenever you want it.

- **Hide the console window.** Run `npm install systray2` in the app folder and
  it minimises to a tray icon instead of sitting in your taskbar.
