# S2S — FAQ

Common questions before and after you install. Setup instructions live in
`SETUP.md`; this is the short version of everything people ask around it.

---

## Getting started

### What do I need to install?

Node.js, and nothing else. Get it from
<https://nodejs.org/en/download/current> and run the installer.

Then, in the app folder:

1. Run `install-chatgpt.bat` (ChatGPT, Free or Plus) or `install-writing.bat`
   (a Claude plan) and follow the prompts. This signs you in.
2. Run `S2S.bat`.

That's it. Leave the window open while you're using the app; closing it stops
the app.

### What do I need to do the writing?

One of these, picked in Settings:

- **ChatGPT, Free or Plus** (the default). Run `install-chatgpt.bat` and sign
  in with your ChatGPT account. Nothing to pay.
- **A Claude plan** (Pro or Max). Run `install-writing.bat`. Writes with Opus
  5.5, the most accurate option, out of your existing subscription, so there's
  no separate bill. An issue uses about twice what the old default did;
  Settings ▸ Writing model has Sonnet 5 if your plan is running low.
- **An Anthropic API key**, billed per use. `API-KEY.md` walks through
  getting one and where it goes; the option appears in Settings once the key
  is set.

### Is there a free version?

Yes: **ChatGPT Free**. One full season uses about 22% of Free's monthly limit
at 4 articles per issue, so roughly **4 seasons (120+ issues) a month**, and it
never hit a 5-hour limit in testing.

### Does Claude free work?

No. The free Claude tier can't run the writing the app depends on. Use
ChatGPT Free instead, or a paid Claude plan or API key.

### Does it work with ChatGPT Plus?

Yes. Pick **ChatGPT Plus** in Settings after running `install-chatgpt.bat`.

### Which writer is the most accurate?

A Claude plan with Opus 5.5, then ChatGPT, then Sonnet 5. In blind checks of
the same 16 pieces against the week's data, Opus 5.5 scored 7.8 out of 10 on
accuracy, ChatGPT Free between 6.2 and 7.5, and Sonnet 5 between 3.6 and 4.9.
Every route gets the same, cleaned-up data; the difference is the model.

### What does it cost on an API key?

Roughly **$1.00 per issue** with Opus 5.5 and **$0.55** with Sonnet 5 at four
articles, scaling with the article count. On a Claude plan or ChatGPT it's included, with nothing
extra to pay.

---

## Your save

### What save do I point it at?

**The autosave.** Turn the in-game Autosave setting ON and leave it on. The app
reads the autosave after every advance, and that's what keeps your site in step
with your dynasty.

### I accidentally generated the same week twice. Is that a problem?

No. Generating the same week again **replaces** that issue rather than adding a
second one. You won't get duplicate articles, your links keep working, and the
photo that week already used stays the same one.

The only cost is the generation itself: on an API key you'll pay for the second
run, and on a plan it uses a little more of your allowance. Nothing to clean up.

If you meant the opposite, advancing twice before generating, that's fine too.
The app writes about the most recent completed week and picks up where it left
off.

---

## Madden and the universe

### Do I need both games?

No. CFB 27 alone or Madden 27 alone works. With both, link them (Settings ▸
your league ▸ **Link**) and they become one universe: the recruits you sign
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

### Does this eat a lot of my Claude plan?

No. Unless you're grinding through seasons back to back you shouldn't notice
it. The prompts are written to keep each issue small, and the default of four
articles a week keeps a normal dynasty well inside a Pro plan.

### I'm on an API key. How do I spend less?

Generate fewer articles a week. **Settings → Articles per issue**, drop it from
4 to 3, and each issue costs proportionally less. Picking a cheaper model in
Settings also helps.

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
