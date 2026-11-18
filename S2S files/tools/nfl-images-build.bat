@echo off
REM Build the NFL photo library (Brave Image Search), the way the college one
REM was built: a search per situation (offense, defense, the kicker,
REM celebrations, fans), black and white, logos and cut-outs left out.
cd /d "%~dp0.."
if not exist "node_modules\sharp" (
  echo   Getting the photo checker and resizer for this run...
  call npm install --no-save --no-audit --no-fund sharp
)
set REDO=
choice /c YN /m "  Start over (replace the photos it found last time; your own stay)"
if not errorlevel 2 set REDO=--redo
set /p BRAVE_API_KEY=Brave Search API key: 
node tools\nfl-images-build.mjs %REDO% %*
echo.
echo   Check them in app\team-images-library-nfl. To ship them with the app: tools\nfl-images-ship.bat
pause
