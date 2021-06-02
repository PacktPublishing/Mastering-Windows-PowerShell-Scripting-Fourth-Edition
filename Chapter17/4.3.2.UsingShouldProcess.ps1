function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    if ($pscmdlet.ShouldProcess('SomeObject')) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
