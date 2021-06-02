function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    if ($pscmdlet.ShouldProcess(
            'Message displayed using WhatIf',
            'Warning: Deleting SomeObject',
            'Question: Are you sure you want to do continue?')) {

        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
