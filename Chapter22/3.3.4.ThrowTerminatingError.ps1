using namespace System.Management.Automation

function Invoke-Something {
    [CmdletBinding()]
    param ( )

    $errorRecord = [ErrorRecord]::new(
        [InvalidOperationException]::new('Failed'),
        'AnErrorID',
        [ErrorCategory]::OperationStopped,
        $null
    )
    $PSCmdlet.ThrowTerminatingError($errorRecord)
}
