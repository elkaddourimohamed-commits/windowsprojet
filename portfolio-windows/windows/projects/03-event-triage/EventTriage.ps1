param([int]$Hours=24,[int]$MaxEvents=200,[string]$OutputPath=".\event-triage.csv")
$start=(Get-Date).AddHours(-[math]::Abs($Hours))
Get-WinEvent -FilterHashtable @{LogName='System';StartTime=$start;Level=1,2,3} -MaxEvents $MaxEvents -ErrorAction SilentlyContinue |
 Select-Object TimeCreated,Id,LevelDisplayName,ProviderName,Message | Export-Csv -NoTypeInformation -Encoding utf8 $OutputPath
Write-Host "Created $OutputPath"
