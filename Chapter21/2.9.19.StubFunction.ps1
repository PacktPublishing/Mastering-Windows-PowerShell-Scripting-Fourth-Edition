# Can only be run on a system with the DnsServer module installed

using namespace System.Management.Automation

$moduleName = 'DnsServer'

Get-Command -Module $moduleName | ForEach-Object {
    $param = [ProxyCommand]::GetParamBlock($command)
    $param = $param -split '\r?\n' -replace '^\s{4}', '$0$0'

    'function {0} {{' -f $_.Name
    '    {0}' -f [ProxyCommand]::GetCmdletBindingAttribute($_)
    '    param ('
    $param
    '    )'
    '}'
    ''
} | Set-Content "$moduleName.psm1"
