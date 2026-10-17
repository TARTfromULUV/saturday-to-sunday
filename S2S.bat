@echo off
title S2S
REM S2S - double-click this to start the generator.
REM
REM It opens a window and keeps running. Leave it open while you want to read
REM or generate from your phone. Closing the window stops the generator.

cd /d "%~dp0"

REM A self-update (Settings, Update the app automatically) leaves a new
REM launcher beside this one; take it before anything else runs.
if exist "launcher.new" (
  move /y "launcher.new" "%~f0" >nul
  start "" "%~f0" %*
  exit /b
)

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo   S2S runs on Node.js, which is not installed yet.
  echo.
  where winget >nul 2>nul
  if not errorlevel 1 (
    choice /c YN /m "  Install Node.js LTS now"
    if not errorlevel 2 (
      winget install -e --id OpenJS.NodeJS.LTS --accept-source-agreements --accept-package-agreements
      echo.
      echo   Done. Close this window and double-click S2S again.
      echo.
      pause
      exit /b 0
    )
  )
  echo   Get the LTS installer from https://nodejs.org, accept the defaults,
  echo   then double-click S2S again.
  echo.
  start "" https://nodejs.org/en/download
  pause
  exit /b 1
)

if not exist "node_modules\madden-franchise" (
  echo.
  echo   First run - installing what's needed. This takes a minute.
  echo.
  call npm install --no-audit --no-fund
  if errorlevel 1 (
    echo.
    echo   That failed. Check your internet connection and try again.
    pause
    exit /b 1
  )
)

REM Opens the app in your browser, unless started with Windows (--background).
set OPENARG=--open
if /i "%~1"=="--background" set OPENARG=
if /i "%~1"=="--restarted" set OPENARG=

:run
REM An update is "unzip over the old folder", which leaves the installed
REM packages as they were. When a release needs a newer one (1.1.0 needs the
REM Agent SDK 0.3.282+ to write with Opus 5.5), refresh them here rather than
REM failing at the first generate.
node tools\deps-current.mjs
if errorlevel 1 (
  echo   Updating packages for this version. This takes a minute.
  echo.
  call npm install --no-audit --no-fund
)

node start.mjs %OPENARG% %*
REM 75: the app updated itself (Settings, Update the app automatically).
REM Start it again on the new version; no second browser window.
if %errorlevel%==75 (
  echo.
  echo   Updated. Starting again.
  echo.
  if exist "launcher.new" (
    move /y "launcher.new" "%~f0" >nul
    start "" "%~f0" --restarted
    exit /b
  )
  set OPENARG=
  goto run
)
pause
