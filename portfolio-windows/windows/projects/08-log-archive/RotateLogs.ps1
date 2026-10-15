param([Parameter(Mandatory=$true)][string]$LogDirectory,[int]$OlderThanDays=30,[string]$ArchiveDirectory=".\archive",[switch]$Apply)
if(-not(Test-Path -LiteralPath $LogDirectory -PathType Container)){throw "LogDirectory not found"}
$cutoff=(Get-Date).AddDays(-[math]::Abs($OlderThanDays))
$files=Get-ChildItem -LiteralPath $LogDirectory -File | Where-Object LastWriteTime -lt $cutoff
Write-Host "$($files.Count) eligible file(s)."
if(-not $Apply){$files | Select-Object FullName,LastWriteTime,Length | Format-Table;Write-Host "Simulation only. Add -Apply to create an archive.";return}
New-Item -ItemType Directory -Force -Path $ArchiveDirectory | Out-Null
if($files.Count -gt 0){$zip=Join-Path $ArchiveDirectory ("logs-{0:yyyyMMdd-HHmmss}.zip" -f (Get-Date));Compress-Archive -LiteralPath $files.FullName -DestinationPath $zip;Write-Host "Archive: $zip"}else{Write-Host "No files to archive"}
