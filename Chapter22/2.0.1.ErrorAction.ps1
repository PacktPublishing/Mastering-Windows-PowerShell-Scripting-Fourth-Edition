function Start-Task {
    [CmdletBinding()]
    param ( )

    Write-Error 'Something went wrong'
}
Start-Task -ErrorAction SilentlyContinue
