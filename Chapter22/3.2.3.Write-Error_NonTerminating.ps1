function Test-Error {
    [CmdletBinding()]
    param ( )

    for ($i = 0; $i -lt 3; $i++) {
        Write-Error -Message "Iteration: $i"
    }
}
