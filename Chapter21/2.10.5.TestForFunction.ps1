It 'Opens an SQL connection' {
    $connection = [System.Data.SqlClient.SqlConnection]::new()
    Open-SqlConnection -SqlConnection $connection
}
