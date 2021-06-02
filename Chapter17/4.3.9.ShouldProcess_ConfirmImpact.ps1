function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')]
    param ( )

    if ($pscmdlet.ShouldProcess('SomeObject')) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
