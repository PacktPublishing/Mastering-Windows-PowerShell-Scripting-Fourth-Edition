function Test-ValidateDrive {
    [CmdletBinding()]
    param (
        [ValidateDrive('C')]
        [String]$Parameter1
    )
}
