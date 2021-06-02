function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(ParameterSetName = 'FirstSetName')]
        $Parameter1,

        [Parameter(ParameterSetName = 'SecondSetName')]
        $Parameter2
    )
}
