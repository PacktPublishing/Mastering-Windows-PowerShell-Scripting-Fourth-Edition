@'
function GetRegistryParameter {
    [CmdletBinding()]
    param ( )

    @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
}

function Get-ComputerDescription {
    [CmdletBinding()]
    param ( )

    $getParams = GetRegistryParameter
    Get-ItemPropertyValue @getParams
}

Export-ModuleMember Get-ComputerDescription
'@ | Set-Content LocalMachine.psm1
