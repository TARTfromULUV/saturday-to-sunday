#!/bin/bash
# S2S - double-click this on a Mac to start it (the Mac twin of
# S2S.bat). Leave the Terminal window open while you read or
# generate; closing it stops the app. First time: right-click > Open, because
# macOS asks about any script downloaded from the internet.

cd "$(dirname "$0")" || exit 1

# A self-update leaves a new launcher beside this one; take it first.
if [ -f launcher.command.new ]; then
  mv -f launcher.command.new "$0" && chmod +x "$0" && exec "$0" "$@"
fi

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
  npm install --no-audit --no-fund || { echo "  That failed. Check your internet connection and try again."; read -r _; exit 1; }
fi

OPENARG=--open
[ "$1" = "--restarted" ] && OPENARG=
while true; do
  node tools/deps-current.mjs || npm install --no-audit --no-fund
  node start.mjs $OPENARG "$@"
  code=$?
  # 75: the app updated itself; start again on the new version.
  if [ "$code" -eq 75 ]; then
    rm -f launcher.new
    echo; echo "  Updated. Starting again."; echo
    if [ -f launcher.command.new ]; then
      mv -f launcher.command.new "$0" && chmod +x "$0" && exec "$0" --restarted
    fi
    OPENARG=
    continue
  fi
  break
done
read -r -p "  Stopped. Press Return to close." _
