Get-CimInstance Win32_Service | Select-Object Name,DisplayName,State,StartMode,StartName | Sort-Object State,Name | Export-Csv -NoTypeInformation -Encoding utf8 .\service-audit.csv
Write-Host "Created service-audit.csv"
