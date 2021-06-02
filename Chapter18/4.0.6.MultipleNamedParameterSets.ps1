function Test-ParameterSet {
    [CmdletBinding(DefaultParameterSetName = 'NamedSet1')]
    param (
        [Parameter(Mandatory)]
        $Parameter1,

        [Parameter(Mandatory, ParameterSetName = 'NamedSet2')]
        $Parameter2,

        [Parameter(Mandatory, ParameterSetName = 'NamedSet3')]
        $Parameter3,

        [Parameter(Mandatory, ParameterSetName = 'NamedSet2')]
        [Parameter(ParameterSetName = 'NamedSet3')]
        $Parameter4
    )
}
