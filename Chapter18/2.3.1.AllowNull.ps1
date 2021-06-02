function Test-AllowNull {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowNull()]
        [Object]$Parameter1
    )
}
