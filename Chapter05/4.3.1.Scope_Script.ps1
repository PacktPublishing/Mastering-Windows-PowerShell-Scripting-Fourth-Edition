# Script file: example.ps1 [Version]$Script:Version = "0.1"
function Get-Version {
    Write-Host "Version: $Version"

}
function Set-Version {
    param (
        [Version]$version
    )
    $Script:Version = $version
}

Set-Version 0.2
Write-Host (Get-Version)