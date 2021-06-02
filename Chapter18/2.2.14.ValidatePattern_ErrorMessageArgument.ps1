function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern(
           '^[A-Z]',
           Options      = 'None',
           ErrorMessage = 'Must start with a capital letter.'
        )]
        [String]$Greeting
    )
}
