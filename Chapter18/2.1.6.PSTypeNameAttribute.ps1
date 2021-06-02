function Test-PSTypeName {
    [CmdletBinding()]
    param (
        [PSTypeName('SomeTypeName')]
        $InputObject
    )
}
