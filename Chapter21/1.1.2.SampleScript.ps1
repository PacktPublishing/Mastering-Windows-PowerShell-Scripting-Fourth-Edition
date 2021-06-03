@'
[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [String]$Password
)

$credential = [PSCredential]::new(
    '.\user',
    ($Password | ConvertTo-SecureString -AsPlainText -Force)
)
$credential.GetNetworkCredential().Password
'@ | Set-Content Show-Password.ps1
