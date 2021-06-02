function Set-Value {
    [CmdletBinding()]
    param (
        [PSObject]$Object
    )

    $Object.Value = 2
}
