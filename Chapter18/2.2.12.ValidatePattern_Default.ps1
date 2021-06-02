function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern(
            '^[A-Z]',
            Options = 'None'
        )]
        [String]$Greeting
    )
}
