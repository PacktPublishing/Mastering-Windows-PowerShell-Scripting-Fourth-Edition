function Test-ParameterValue {
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Absent', 'Present')]
        [string]$Ensure
    )
}
