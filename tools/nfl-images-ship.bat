@echo off
REM Commit the NFL photo library and push it, so every copy of the app gets
REM it (like the college library). Run after tools\nfl-images-build.bat.
cd /d "%~dp0.."
git add app/team-images-library-nfl
git commit -m "NFL photo library"
git push
pause
