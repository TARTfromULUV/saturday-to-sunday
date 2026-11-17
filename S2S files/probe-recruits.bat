@echo off
title S2S recruiting probe
REM S2S - double-click to read your college save (read only) for Phase C. Writes probe-recruits.json here.
cd /d "%~dp0"
node scripts\probe-recruits.mjs
echo.
echo   Attach probe-recruits.json (in this folder) in the Claude session.
pause
