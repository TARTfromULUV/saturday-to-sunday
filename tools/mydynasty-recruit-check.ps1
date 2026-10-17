# tools/mydynasty-recruit-check.ps1 - what MyDynasty keeps about recruiting and past seasons
# (recruiting fields, almanac), sent to the review folder on GitHub
# for the cloud session. Needed for the recruiting rankings and Catch up.
#
#   powershell -ExecutionPolicy Bypass -File tools\mydynasty-recruit-check.ps1
#
# Read-only: nothing in MyDynasty is changed. Takes a minute or two: the
# season snapshots are large.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
git pull -q origin madden-4jfaw7
node --max-old-space-size=6144 tools\mydynasty-recruit-check.mjs --out review\mydynasty-recruit-check.txt
git add -f review\mydynasty-recruit-check.txt
git commit -q -m "review: mydynasty recruit check"
git push -q origin madden-4jfaw7
Write-Host "Sent review\mydynasty-recruit-check.txt"
