function Test-ValidateNotNullOrEmpty {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [String]$Parameter1,

        [ValidateNotNullOrEmpty()]
        [Object[]]$Parameter2
    )
}
