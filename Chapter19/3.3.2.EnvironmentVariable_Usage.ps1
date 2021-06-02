function Get-EnvironmentVariable {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateSet([EnvironmentVariable])]
        [string]$Name
    )

    Get-Item env:$Name
}
