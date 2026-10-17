@echo off
rem tools\mydynasty-search.bat - double-click: searches MyDynasty for recruit rankings
rem and sends review\mydynasty-search.txt to GitHub. Read-only on MyDynasty.
cd /d "%~dp0.."
echo Searching the MyDynasty folder. This takes a minute or two...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0mydynasty-search.ps1"
if errorlevel 1 (echo. & echo Something went wrong - copy the text above and send it over.) else (echo. & echo Done. You can close this window.)
pause
