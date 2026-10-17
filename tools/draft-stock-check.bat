@echo off
rem tools\draft-stock-check.bat - double-click: MyDynasty's draft stock beside S2S's big board,
rem and sends review\draft-stock-check.txt to GitHub. Read-only on MyDynasty and on S2S's data.
cd /d "%~dp0.."
set /p NAME="Player to look at (Enter for David Sanders Jr.): "
if "%NAME%"=="" set NAME=David Sanders Jr.
echo Reading MyDynasty's draft stock. This takes a minute...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0draft-stock-check.ps1" "%NAME%"
if errorlevel 1 (echo. & echo Something went wrong - copy the text above and send it over.) else (echo. & echo Done. You can close this window.)
pause
