# tools/mydynasty-search.ps1 - does MyDynasty keep recruit rankings anywhere?
# Searches the MyDynasty folder (read-only) and sends review\mydynasty-search.txt
# to GitHub on its own branch (review-drop) for the cloud session.
#
#   powershell -ExecutionPolicy Bypass -File tools\mydynasty-search.ps1
#
# Nothing in MyDynasty is changed, and your copy of the app is left as it was.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
node --max-old-space-size=6144 tools\mydynasty-search.mjs --out review\mydynasty-search.txt
git add -f review\mydynasty-search.txt
git -c user.name=S2S -c user.email=s2s@localhost commit -q -m "review: mydynasty search"
git push -q -f origin HEAD:refs/heads/review-drop
git reset -q HEAD~1
Write-Host "Sent review\mydynasty-search.txt"
