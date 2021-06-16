BeforeAll {
    $connection = [System.Data.SqlClient.SqlConnection]::new()
    $connection |
        Add-Member Open -MemberType ScriptMethod -Force -Value {
            $true
        }
}
It 'Opens an SQL connection' {
    Open-SqlConnection -SqlConnection $connection |
        Should -BeTrue
}
