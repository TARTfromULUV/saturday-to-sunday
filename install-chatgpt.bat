@echo off
REM Sign in so S2S can write with your ChatGPT plan (Free or Plus).
REM
REM The writing goes through Codex, OpenAI's command-line tool, which every
REM ChatGPT plan includes. Signed in with your ChatGPT account it uses your
REM plan's Codex allowance: no API key, no separate bill.

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
echo   [1/2] Installing Codex (OpenAI's command-line tool)...
call npm install -g @openai/codex --no-audit --no-fund

where codex >nul 2>nul
if errorlevel 1 (
  echo.
  echo   Codex installed but `codex` is not on PATH yet.
  echo   Close this window, open a NEW one, and run this file again.
  echo.
  pause
  exit /b 1
)

echo.
echo   [2/2] Signing in. A browser window will open.
echo         Choose "Sign in with ChatGPT" and use your ChatGPT account.
echo.
call codex login

echo.
call codex login status
echo.
echo   Done. In S2S, open Settings, tap "Check again",
echo   then pick "ChatGPT Free" or "ChatGPT Plus" to match your plan.
echo.
pause
