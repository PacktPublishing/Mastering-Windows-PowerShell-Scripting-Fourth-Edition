@'
BeforeDiscovery {
function Script:Open-SqlConnection {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Data.SqlClient.SqlConnection]$SqlConnection
    )

    if ($sqlConnection.State -eq 'Closed') {
        $SqlConnection.Open()
    }
}
}

Describe Open-SqlConnection {
}
'@ | Set-Content sql.tests.ps1
