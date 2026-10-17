@echo off
REM Codex trial, step 2: a simulated season on the Free plan.
REM
REM Replays the current dynasty's saved weeks, then the old Boise dynasty's
REM full season, one real-sized issue (4 pieces) per week. When the plan says
REM stop, it waits out the reset and carries on (72 hours at most). Every piece
REM and every refusal goes into codex-trial\_ledger.jsonl, which is what
REM measures the limits.
REM
REM Keep this window open and the PC awake. Closing it stops the run.
REM To resume after an interruption, add  --start-at y0w09  (the week it
REM stopped on) to the node line below.

cd /d "%~dp0.."
if not exist codex-trial mkdir codex-trial
set "DATA=%LOCALAPPDATA%\VintageESPNApp"

echo.
echo   Simulated season on Codex, Free plan. This runs for hours,
echo   waiting out usage resets as it goes.
echo.
echo   Keep this window open and the PC awake.
echo   Claude is watching the results folder.
echo.

node tools\codex-trial.mjs "%DATA%\dynasty-9199462" "%DATA%\dynasty-9192662-2" --season --per-issue 4 --wait-for-reset --plan free > codex-trial\console-2-season.log 2>&1
type codex-trial\console-2-season.log

echo.
echo   Finished. Results are in the codex-trial folder.
pause
