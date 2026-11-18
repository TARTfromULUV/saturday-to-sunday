@echo off
REM Runs the test jobs Claude drops into codex-trial\queue\, one at a time.
REM Start it once and leave the window open (minimised is fine) while
REM Claude works. Close the window to stop it.

cd /d "%~dp0.."
title S2S - job runner
echo.
echo   Job runner for Claude's tuning session.
echo   Leave this window open. Close it to stop.
echo.
node tools\job-runner.mjs
pause
