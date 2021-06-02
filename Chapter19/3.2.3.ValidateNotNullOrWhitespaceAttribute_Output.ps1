function Test-Validate {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrWhitespace()]
        [String]$Value
    )

    Write-Host $Value
}
