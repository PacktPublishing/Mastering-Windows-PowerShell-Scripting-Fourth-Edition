function Test-ValidateDrive {
    [CmdletBinding()]
    param (
        [ValidateUserDrive()]
        [String]$Parameter1
    )
}
