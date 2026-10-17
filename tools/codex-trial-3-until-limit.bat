@echo off
REM Codex trial, step 3: find the ceiling.
REM
REM Run this AFTER step 2 has finished. Same real-sized issues (4 pieces),
REM but instead of stopping at the end of the season it wraps round and keeps
REM going until the Free plan refuses. Then it waits out the reset and carries
REM on, so one run measures the 5-hour window and, given time, the weekly one
REM (72 hours at most). Every piece and refusal goes into
REM codex-trial\_ledger.jsonl.
REM
REM This will use up the Free account's Codex allowance on purpose.
REM Keep this window open and the PC awake. Closing it stops the run.

cd /d "%~dp0.."
if not exist codex-trial mkdir codex-trial
set "DATA=%LOCALAPPDATA%\VintageESPNApp"

echo.
echo   Codex, Free plan: generating until the plan says stop,
echo   then waiting out the reset and going again.
echo.
echo   Keep this window open and the PC awake.
echo   Claude is watching the results folder.
echo.

node tools\codex-trial.mjs "%DATA%\dynasty-9199462" "%DATA%\dynasty-9192662-2" --season --per-issue 4 --until-limit --wait-for-reset --plan free > codex-trial\console-3-until-limit.log 2>&1
type codex-trial\console-3-until-limit.log

echo.
echo   Finished. Results are in the codex-trial folder.
pause
