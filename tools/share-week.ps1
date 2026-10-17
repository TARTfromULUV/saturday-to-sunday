# tools/share-week.ps1 - send this week's issues to the review folder on GitHub.
#
#   powershell -ExecutionPolicy Bypass -File tools\share-week.ps1
#
# Copies the newest issue of every dynasty (the issue, its box scores, the
# budget and the run log; not the save files) into review\<league>-<key>\,
# then commits and pushes so it can be read in the cloud session. A few
# hundred KB a week. Your data folder is only read.

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
Set-Location $repo
$data = Join-Path $env:LOCALAPPDATA 'VintageESPNApp'
if (-not (Test-Path $data)) { Write-Host "No data folder at $data"; exit 1 }

git pull -q origin madden-4jfaw7

$sent = @()
foreach ($d in Get-ChildItem $data -Directory -Filter 'dynasty-*') {
  $issues = Join-Path $d.FullName 'issues'
  if (-not (Test-Path $issues)) { continue }
  $latest = Get-ChildItem $issues -Filter '*.json' | Sort-Object LastWriteTime -Descending | Select-Object -First 1
  if (-not $latest) { continue }
  $key = $latest.BaseName
  $league = if ($d.Name -match '^dynasty-m\d') { 'nfl' } else { 'cfb' }
  $out = Join-Path $repo "review\$league-$key"
  New-Item -ItemType Directory -Force -Path $out | Out-Null
  Copy-Item $latest.FullName (Join-Path $out 'issue.json') -Force
  $games = Join-Path $d.FullName "games\$key.json"
  if (Test-Path $games) { Copy-Item $games (Join-Path $out 'games.json') -Force }
  $prompts = Join-Path $d.FullName "prompts\$key"
  foreach ($f in '_budget.json', '_run-log.txt') {
    $p = Join-Path $prompts $f
    if (Test-Path $p) { Copy-Item $p (Join-Path $out $f) -Force }
  }
  $sent += "$league $key"
}
if (-not $sent) { Write-Host 'No issues found.'; exit 1 }

git add -f review
git commit -q -m "review: $($sent -join ', ')"
git push -q origin madden-4jfaw7
Write-Host "Sent: $($sent -join ', ')"
