# Replaces blocks in sql.tests.ps1 created in 2.9.10

BeforeAll {
    $connection = [System.Data.SqlClient.SqlConnection]::new()
    $connection |
        Add-Member Open -MemberType ScriptMethod -Force -Value {
            $Script:Opened = $true
        }
}

BeforeEach {
    $Script:Opened = $false
}

It 'Opens an SQL connection' {
    Open-SqlConnection -SqlConnection $connection

    $Script:Opened | Should -BeTrue
}
