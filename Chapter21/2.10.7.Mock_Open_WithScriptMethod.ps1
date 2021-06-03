# Add to sql.tests.ps1 created in 2.9.10

BeforeAll {
    $connection = [System.Data.SqlClient.SqlConnection]::new()
    $connection |
        Add-Member Open -MemberType ScriptMethod -Value { } -Force
}

It 'Opens an SQL connection' {
    Open-SqlConnection -SqlConnection $connection
}
