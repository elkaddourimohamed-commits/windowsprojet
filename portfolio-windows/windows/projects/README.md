# Exemples PowerShell
- `.\projects\01-inventory\Inventory.ps1 -OutputPath .\inventory.json`
- `.\projects\02-service-audit\ServiceAudit.ps1`
- `.\projects\03-event-triage\EventTriage.ps1 -Hours 12`
- `.\projects\04-firewall-audit\FirewallAudit.ps1`
- `.\projects\05-local-admin-audit\LocalAdmins.ps1`
- `.\projects\06-disk-health\DiskHealth.ps1`
- `.\projects\07-network-diagnostics\NetworkDiagnostics.ps1 -HostName example.com -Port 443`
- `.\projects\08-log-archive\RotateLogs.ps1 -LogDirectory C:\Temp\Logs`
Scripts may need an elevated PowerShell session for some inventory data. Log rotation is simulation-only unless `-Apply` is supplied; source files are not deleted.
