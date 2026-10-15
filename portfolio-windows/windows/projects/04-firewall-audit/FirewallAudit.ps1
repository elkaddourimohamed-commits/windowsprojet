$profiles=Get-NetFirewallProfile | Select-Object Name,Enabled,DefaultInboundAction,DefaultOutboundAction
$profiles | Format-Table -AutoSize
if(($profiles | Where-Object {-not $_.Enabled}).Count -gt 0){Write-Warning "At least one firewall profile is disabled; review local policy."}
