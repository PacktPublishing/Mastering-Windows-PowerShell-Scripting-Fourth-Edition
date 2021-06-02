function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [PSTypeName('CustomTypeName')]
        $InputObject
    )

    process {
        $InputObject.Name
    }
}
