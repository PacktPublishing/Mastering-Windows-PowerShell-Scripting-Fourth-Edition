function GetRegistryParameter {
    [CmdletBinding()]
    [OutputType([Hashtable])]
    param ( )

    @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
}
