function Get-EmptyOutput { return $null }
function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [AllowNull()]
        $InputObject
    )
    if ($InputObject) {
        # Do work
    }
}
# No output, no error
Get-EmptyOutput | Get-InputObject
