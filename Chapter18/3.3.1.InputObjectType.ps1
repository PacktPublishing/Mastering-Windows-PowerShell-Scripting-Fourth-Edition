function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [System.Diagnostics.Process]$InputObject
    )

    process {
        'Process name {0}' -f $InputObject.Name
    }
}
