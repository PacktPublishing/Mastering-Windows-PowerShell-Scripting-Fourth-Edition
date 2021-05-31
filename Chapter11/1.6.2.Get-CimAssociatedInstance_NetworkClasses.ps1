$params = @{
    ClassName = 'Win32_NetworkAdapterConfiguration'
    Filter    = 'IPEnabled=TRUE AND DHCPEnabled=TRUE'
}
Get-CimInstance @params | ForEach-Object {
    $adapter = $_ | Get-CimAssociatedInstance -ResultClassName Win32_NetworkAdapter

    [PSCustomObject]@{
        NetConnectionID = $adapter.NetConnectionID
        Speed           = [Math]::Round($adapter.Speed / 1MB, 2)
        IPAddress       = $_.IPAddress
        IPSubnet        = $_.IPSubnet
        Index           = $_.Index
        Gateway         = $_.DefaultIPGateway
    }
}
