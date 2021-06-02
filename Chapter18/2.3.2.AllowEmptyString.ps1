function Test-AllowEmptyString {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [String]$Parameter1
    )
}
