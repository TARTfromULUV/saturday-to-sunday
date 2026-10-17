@echo off
REM Sign in so S2S can write with your own Claude plan.
REM
REM TWO packages are needed and they are easy to confuse:
REM   - the Agent SDK does the writing. `npm install` already gets it.
REM   - the Claude Code CLI holds your sign-in. It must be installed globally.
REM Having only one of them is the most common setup problem, which is why
REM Settings tells you which half is missing.

cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo   Node.js is not installed. Get the LTS installer from https://nodejs.org
  echo.
  pause
  exit /b 1
)

echo.
echo   [1/3] Making sure the Agent SDK is installed...
call npm install @anthropic-ai/claude-agent-sdk@latest --no-audit --no-fund

echo.
echo   [2/3] Installing the Claude Code CLI (this is what holds your sign-in)...
call npm install -g @anthropic-ai/claude-code --no-audit --no-fund

where claude >nul 2>nul
if errorlevel 1 (
  echo.
  echo   The CLI installed but `claude` is not on PATH yet.
  echo   Close this window, open a NEW one, and run this file again.
  echo.
  pause
  exit /b 1
)

echo.
echo   [3/3] Signing in. A browser window will open.
echo.
call claude login

echo.
echo   Done. In S2S, open Settings, tap "Check again",
echo   then pick "Your Claude plan".
echo.
pause
