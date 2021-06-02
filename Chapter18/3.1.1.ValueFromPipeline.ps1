function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        $InputObject
    )

    process {
        'Input object was of type {0}' -f @(
            $InputObject.GetType().FullName
        )
    }
}
