param([string]$OutputPath=".\local-admins.csv")
$group=Get-LocalGroup -SID 'S-1-5-32-544'
Get-LocalGroupMember -Group $group.Name | Select-Object Name,ObjectClass,PrincipalSource | Export-Csv -NoTypeInformation -Encoding utf8 $OutputPath
Write-Host "Created $OutputPath"
