function Invoke-Something {
    [CmdletBinding()]
    param ( )

    try {
        throw 'Error'
        Write-Host 'No error'
    } catch {
        throw 'An error occurred'
    }
}
