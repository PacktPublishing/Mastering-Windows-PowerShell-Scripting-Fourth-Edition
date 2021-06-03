function Update-Value {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [string]$Value
    )

    process {
        if ($Value.Length -lt 5) {
            Write-Error ('The value {0} is unacceptable' -f $Value)
        } else {
            'Updated value: {0}' -f $Value
        }
    }
}
