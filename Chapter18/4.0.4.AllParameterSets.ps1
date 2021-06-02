function Test-ParameterSet {
    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(Mandatory, Position = 1)]
        $Parameter1,

        [Parameter(ParameterSetName = 'NamedSet')]
        $Parameter2
    )
}
