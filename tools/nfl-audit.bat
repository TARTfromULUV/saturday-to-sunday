@echo off
rem tools\nfl-audit.bat - double-click: sends what the Madden side filed and wrote, week by
rem week, to review\nfl-audit.txt on GitHub for the cloud session. Read-only; no save files.
cd /d "%~dp0.."
echo Collecting the Madden audit...
git pull -q origin madden-4jfaw7
node tools\nfl-audit.mjs --out review\nfl-audit.txt
if errorlevel 1 goto failed
git add -f review\nfl-audit.txt
git commit -q -m "review: nfl audit"
git push -q origin madden-4jfaw7
if errorlevel 1 goto failed
echo.
echo Sent review\nfl-audit.txt. You can close this window.
pause
exit /b 0
:failed
echo.
echo Something went wrong - copy the text above and send it over.
pause
exit /b 1
