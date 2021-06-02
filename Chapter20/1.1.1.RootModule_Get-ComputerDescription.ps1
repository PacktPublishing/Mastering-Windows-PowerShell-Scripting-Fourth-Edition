# Expected to be saved in LocalMachine.psm1

function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
    Get-ItemPropertyValue @getParams
}
