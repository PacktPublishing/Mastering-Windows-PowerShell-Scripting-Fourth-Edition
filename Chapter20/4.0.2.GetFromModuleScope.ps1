function Get-ServiceConnection {
    [CmdletBinding()]
    param ( )

    if ($Script:connection) {
        $Script:connection
    } else {
        throw [InvalidOperationException]::new(
            'Not connected to the service'
        )
    }
}
