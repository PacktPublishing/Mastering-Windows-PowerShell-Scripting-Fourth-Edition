function Write-Number {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [int]$Number
    )
    process {
        Write-Host $Number
    }
}
