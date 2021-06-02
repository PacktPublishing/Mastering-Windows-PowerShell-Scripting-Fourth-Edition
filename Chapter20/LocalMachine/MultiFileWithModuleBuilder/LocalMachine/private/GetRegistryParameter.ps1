function GetRegistryParameter {
    <#
    .SYNOPSIS
        Get the registry key and value for a computer description.

    .DESCRIPTION
        Get the registry key path and value name as a hashtable which
        can be used to configure a computer description.
    #>

    [CmdletBinding()]
    [OutputType([Hashtable])]
    param ( )

    @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
}
