using namespace System.Data.SqlClient

function Open-SqlConnection {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [SqlConnection]$SqlConnection
    )

    if ($sqlConnection.State -eq 'Closed') {
        $SqlConnection.Open()
    }
}
