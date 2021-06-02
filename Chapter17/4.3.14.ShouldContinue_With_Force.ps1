function Test-ShouldContinue {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [Switch]$Force
    )

    $yesToAll = $noToAll = $false
    if ($Force -or $pscmdlet.ShouldContinue(
            "Warning: Deleting SomeObject $value",
            'Question: Are you sure you want to do continue?',
            $false,
            [Ref]$yesToAll,
            [Ref]$noToAll)) {

        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
