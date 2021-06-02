function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName)]
        [Alias('First', 'Second', 'Third')]
        $InputObject
    )
}
