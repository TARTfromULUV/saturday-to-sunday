# tools/peek-tools.ps1 - sample what MyDynasty and MyFranchise keep, and send
# the short report to the review folder on GitHub for the cloud session.
#
#   powershell -ExecutionPolicy Bypass -File tools\peek-tools.ps1
#
# Read-only: nothing in MyDynasty or MyFranchise is changed.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
git pull -q origin madden-4jfaw7
node tools\peek-tools.mjs --out review\tools-peek.txt
git add -f review\tools-peek.txt
git commit -q -m "review: tools peek"
git push -q origin madden-4jfaw7
Write-Host "Sent review\tools-peek.txt"
