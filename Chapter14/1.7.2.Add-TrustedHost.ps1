function Add-TrustedHost {
    param (
        [String]$Hostname
    )

    $item = Get-Item WSMan:\localhost\Client\TrustedHosts
    $trustedHosts = @($item.Value -split ',')
    $trustedHosts = $trustedHosts + $Hostname |
        Where-Object { $_ } |
        Select-Object -Unique

    $item | Set-Item -Value ($trustedHosts -join ',')
}