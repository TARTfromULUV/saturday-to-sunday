# tools/draft-stock-check.ps1 - MyDynasty's draft stock beside ours
# Reads MyDynasty and S2S (read-only) and sends review\draft-stock-check.txt
# to GitHub on its own branch (review-drop) for the cloud session.
#
#   powershell -ExecutionPolicy Bypass -File tools\draft-stock-check.ps1
#
# Nothing in MyDynasty is changed, and your copy of the app is left as it was.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
$name = if ($args.Count) { $args[0] } else { "David Sanders Jr." }
node --max-old-space-size=6144 tools\draft-stock-check.mjs --name "$name" --out review\draft-stock-check.txt
git add -f review\draft-stock-check.txt
git -c user.name=S2S -c user.email=s2s@localhost commit -q -m "review: draft stock check"
git push -q -f origin HEAD:refs/heads/review-drop
git reset -q HEAD~1
Write-Host "Sent review\draft-stock-check.txt"
