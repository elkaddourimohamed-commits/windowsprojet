param([Parameter(Mandatory=$true)][string]$HostName,[int]$Port=443)
Get-NetIPConfiguration | Format-Table InterfaceAlias,IPv4Address,IPv4DefaultGateway,DNSServer -AutoSize
try { Resolve-DnsName -Name $HostName -ErrorAction Stop | Select-Object Name,Type,IPAddress } catch { Write-Warning $_ }
Test-NetConnection -ComputerName $HostName -Port $Port -InformationLevel Detailed
