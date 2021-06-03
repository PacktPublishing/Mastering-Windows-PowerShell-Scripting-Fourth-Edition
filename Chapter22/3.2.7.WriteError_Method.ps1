using namespace System.Management.Automation

function Test-Error {
    [CmdletBinding()]
    param ( )

    for ($i = 0; $i -lt 3; $i++) {
        $errorRecord = [ErrorRecord]::new(
            [Exception]::new('Iteration {0}' -f $i),
            'InvalidOperation',
            'InvalidOperation',
            $i
        )
        $PSCmdlet.WriteError($errorRecord)
    }
}
