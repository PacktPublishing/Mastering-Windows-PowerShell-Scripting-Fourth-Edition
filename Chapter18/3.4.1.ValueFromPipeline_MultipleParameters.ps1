function Test-ValueFromPipeline {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [Int]$Parameter1,

        [Parameter(ValueFromPipeline)]
        [Int]$Parameter2
    )

    process {
        'Parameter1: {0}:: Parameter2: {1}' -f @(
            $Parameter1
            $Parameter2
        )
    }
}
