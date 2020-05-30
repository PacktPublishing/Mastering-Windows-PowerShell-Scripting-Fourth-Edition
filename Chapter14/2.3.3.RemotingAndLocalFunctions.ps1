function Get-FreeSpace {
    param (
        [Parameter(Mandatory = $true)]
        [String]$Name
    )

    [Math]::Round((Get-PSDrive $Name).Free / 1GB, 2)
}
Invoke-Command ${function:Get-FreeSpace} -Session $session -ArgumentList C