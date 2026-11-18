#!/bin/bash
# S2S - double-click this on a Mac to start it (the Mac twin of
# S2S.bat). Leave the Terminal window open while you read or
# generate; closing it stops the app. First time: right-click > Open, because
# macOS asks about any script downloaded from the internet.

cd "$(dirname "$0")" || exit 1
HERE="$(pwd)"; SELF="$HERE/$(basename "$0")" # the launcher, wherever the app folder is (START HERE.html's one-folder download)

# A self-update leaves a new launcher beside this one; take it first.
if [ -f launcher.command.new ]; then
  mv -f launcher.command.new "$SELF" && chmod +x "$SELF" && exec "$SELF" "$@"
fi

# The public download keeps the app in "S2S files" beside this launcher (START HERE.html explains).
if [ -f "S2S files/start.mjs" ]; then cd "S2S files" || exit 1; fi

if ! command -v node >/dev/null 2>&1; then
  echo
  echo "  S2S runs on Node.js, which is not installed yet."
  if command -v brew >/dev/null 2>&1; then
    read -r -p "  Install it now with Homebrew? [y/N] " yn
    if [[ "$yn" =~ ^[Yy] ]]; then brew install node; fi
  fi
  if ! command -v node >/dev/null 2>&1; then
    echo "  Get the LTS installer from https://nodejs.org, then double-click this again."
    open "https://nodejs.org/en/download"
    read -r -p "  Press Return to close." _
    exit 1
  fi
fi

if [ ! -d "node_modules/madden-franchise" ]; then
  echo
  echo "  First run - installing what's needed. This takes a minute."
  echo
  # The optional packages (the Claude writer, about 480 MB) are skipped: S2S writes with ChatGPT for now.
  npm install --no-audit --no-fund --omit=optional || { echo "  That failed. Check your internet connection and try again."; read -r _; exit 1; }
fi

OPENARG=--open
[ "$1" = "--restarted" ] && OPENARG=
while true; do
  # Keeps the Claude writer only where it is already installed.
  node tools/deps-current.mjs || { if [ -d node_modules/@anthropic-ai/claude-agent-sdk ]; then npm install --no-audit --no-fund; else npm install --no-audit --no-fund --omit=optional; fi; }
  node start.mjs $OPENARG "$@"
  code=$?
  # 75: the app updated itself; start again on the new version.
  if [ "$code" -eq 75 ]; then
    rm -f "$HERE/launcher.new"
    echo; echo "  Updated. Starting again."; echo
    if [ -f "$HERE/launcher.command.new" ]; then
      mv -f "$HERE/launcher.command.new" "$SELF" && chmod +x "$SELF" && exec "$SELF" --restarted
    fi
    OPENARG=
    continue
  fi
  break
done
read -r -p "  Stopped. Press Return to close." _
