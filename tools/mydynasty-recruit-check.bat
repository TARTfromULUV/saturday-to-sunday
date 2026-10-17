@echo off
rem tools\mydynasty-recruit-check.bat - double-click to run the MyDynasty recruiting check
rem and send review\mydynasty-recruit-check.txt to GitHub. Read-only on MyDynasty.
cd /d "%~dp0.."
echo Running the MyDynasty recruiting check. This takes a minute or two...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0mydynasty-recruit-check.ps1"
if errorlevel 1 (echo. & echo Something went wrong - copy the text above and send it over.) else (echo. & echo Done. You can close this window.)
pause
