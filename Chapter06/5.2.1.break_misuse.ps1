function Test-Value {
    [CmdletBinding()]
    param (
        [int]$Value
    )

    if ($Value -eq 7) {
        break
    }
    $true
}
