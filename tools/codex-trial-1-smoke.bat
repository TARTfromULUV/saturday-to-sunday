@echo off
REM Codex trial, step 1: ONE piece on the Free plan, the newest issue's column.
REM A quick check that Codex runs from here and writes a usable article
REM before we spend the Free allowance on a whole season.
REM Claude reads the results from the codex-trial folder.

cd /d "%~dp0.."
if not exist codex-trial mkdir codex-trial

echo.
echo   Sending the newest issue's column to Codex on the Free plan.
echo   Takes a minute or two. Claude is watching the results folder.
echo.

node tools\codex-trial.mjs --only show --plan free > codex-trial\console-1-smoke.log 2>&1
type codex-trial\console-1-smoke.log

echo.
echo   Done. You can close this window.
pause
