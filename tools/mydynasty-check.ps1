# tools/mydynasty-check.ps1 - how MyDynasty's season snapshots are laid out
# (player records, stat rows, team names), sent to the review folder on GitHub
# for the cloud session. Needed for the former-players backfill.
#
#   powershell -ExecutionPolicy Bypass -File tools\mydynasty-check.ps1
#
# Read-only: nothing in MyDynasty is changed. Takes a minute or two: the
# season snapshots are large.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
git pull -q origin madden-4jfaw7
node --max-old-space-size=6144 tools\mydynasty-check.mjs --out review\mydynasty-check.txt
git add -f review\mydynasty-check.txt
git commit -q -m "review: mydynasty check"
git push -q origin madden-4jfaw7
Write-Host "Sent review\mydynasty-check.txt"
