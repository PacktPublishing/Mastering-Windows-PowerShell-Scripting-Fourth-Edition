function Write-Number {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [int]$Number
    )
    Write-Host $Number
}
