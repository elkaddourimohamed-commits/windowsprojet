param([string]$OutputPath = "")
$os=Get-CimInstance Win32_OperatingSystem
$cs=Get-CimInstance Win32_ComputerSystem
$disks=Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID,@{n='SizeGB';e={[math]::Round($_.Size/1GB,2)}},@{n='FreeGB';e={[math]::Round($_.FreeSpace/1GB,2)}}
$result=[pscustomobject]@{ComputerName=$env:COMPUTERNAME;OS=$os.Caption;Version=$os.Version;LastBoot=$os.LastBootUpTime;Manufacturer=$cs.Manufacturer;Model=$cs.Model;RAM_GB=[math]::Round($cs.TotalPhysicalMemory/1GB,2);Disks=@($disks)}
if($OutputPath){$result|ConvertTo-Json -Depth 4|Set-Content -Encoding utf8 $OutputPath}else{$result|ConvertTo-Json -Depth 4}
