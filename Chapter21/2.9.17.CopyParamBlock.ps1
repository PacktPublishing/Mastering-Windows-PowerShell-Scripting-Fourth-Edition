using namespace System.Management.Automation

$command = Get-Command Add-DnsServerPrimaryZone
[ProxyCommand]::GetParamBlock(
    $command
)
