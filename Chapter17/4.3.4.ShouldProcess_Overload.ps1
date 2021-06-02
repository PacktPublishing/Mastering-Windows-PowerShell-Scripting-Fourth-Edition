function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    if ($pscmdlet.ShouldProcess('SomeObject', 'delete')) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
