function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern('^Hello', Options = 'Multiline')]
        [String]$Parameter1
    )
}
