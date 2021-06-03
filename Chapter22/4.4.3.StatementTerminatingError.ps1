using namespace System.Management.Automation

function caller {
    first
    second
}
function first {
    [CmdletBinding()]
    param ( )

    $errorRecord = [ErrorRecord]::new(
        [Exception]::new('Failed'),
        'ID',
        'OperationStopped',
        $null
    )
    $pscmdlet.ThrowTerminatingError($errorRecord)
    'first'
}
function second {
    'second'
}
