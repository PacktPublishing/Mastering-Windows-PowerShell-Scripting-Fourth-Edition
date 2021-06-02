function Test-Position {
    [CmdletBinding()]
    param (
        [Parameter()]
        $Parameter1,

        [Parameter()]
        $Parameter2
    )

    '{0}-{1}' -f $Parameter1, $Parameter2
}
