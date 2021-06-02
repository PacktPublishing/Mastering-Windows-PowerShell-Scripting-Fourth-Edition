function Test-Validate {
    [CmdletBinding()]
    param (
        [ValidatePrivateIPAddress()]
        [IPAddress]$IPAddress
    )

    Write-Host $IPAddress
}
