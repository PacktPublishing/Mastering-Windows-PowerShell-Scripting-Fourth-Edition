function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern('^Hello')]
        [String]$Parameter1
    )
}
