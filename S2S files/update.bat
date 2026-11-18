@echo off
title S2S update
REM S2S - double-click this to pull the latest main and restart S2S.
REM It lives beside S2S.bat, so it already knows the folder.

cd /d "%~dp0"

where git >nul 2>nul
if errorlevel 1 (
  echo.
  echo   Git is not installed, so this folder can't pull updates. Use Settings ^> Update in S2S instead.
  echo.
  pause
  exit /b 1
)

echo.
echo   Pulling the latest S2S from main...
git pull origin main
if errorlevel 1 (
  echo.
  echo   The pull did not finish. Read the lines above, then try again.
  echo.
  pause
  exit /b 1
)

echo.
echo   Closing the running S2S window (if any) and starting it again...
taskkill /fi "WINDOWTITLE eq S2S" /t /f >nul 2>nul
start "" "%~dp0S2S.bat"
echo.
echo   Done. S2S is starting in its own window. Reload the page in your browser.
timeout /t 4 >nul
