function Get-EmptyOutput { }
function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        $InputObject
    )
}
# No output, no error
Get-EmptyOutput | Get-InputObject
