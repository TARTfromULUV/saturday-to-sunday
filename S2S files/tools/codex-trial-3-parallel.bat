@echo off
REM Codex trial: can the Free plan take several pieces at once?
REM
REM The app writes three pieces of an issue at the same time. This sends the
REM current dynasty's last three issues (4 pieces each) the same way, three
REM at a time, and reports how many were actually in flight together and
REM whether any came back with an error. About five minutes.

cd /d "%~dp0.."
if not exist codex-trial mkdir codex-trial
set "DATA=%LOCALAPPDATA%\VintageESPNApp"

echo.
echo   Codex, Free plan: three pieces at a time, like the app.
echo   About five minutes. Claude is watching the results folder.
echo.

node tools\codex-trial.mjs "%DATA%\dynasty-9199462" --season --start-at y0w05 --per-issue 4 --parallel 3 --plan free > codex-trial\console-3-parallel.log 2>&1
type codex-trial\console-3-parallel.log

echo.
echo   Finished. Results are in the codex-trial folder.
pause
