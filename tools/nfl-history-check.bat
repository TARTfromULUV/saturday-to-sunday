@echo off
rem tools\nfl-history-check.bat - double-click: sends where Madden and MyFranchise keep franchise history
rem (read-only) to review\nfl-history-check.txt on GitHub for the cloud session. Read-only; no save files.
cd /d "%~dp0.."
echo Collecting where Madden keeps its history...
git pull -q origin madden-4jfaw7
node tools\nfl-history-check.mjs --out review\nfl-history-check.txt
if errorlevel 1 goto failed
git add -f review\nfl-history-check.txt
git commit -q -m "review: nfl audit"
git push -q origin madden-4jfaw7
if errorlevel 1 goto failed
echo.
echo Sent review\nfl-history-check.txt. You can close this window.
pause
exit /b 0
:failed
echo.
echo Something went wrong - copy the text above and send it over.
pause
exit /b 1
