# Replaces blocks in sql.tests.ps1 created in 2.9.10

BeforeAll {
    $connection = [System.Data.SqlClient.SqlConnection]::new()
    $connection |
        Add-Member Open -MemberType ScriptMethod -Force -Value {
            $this.State = 'Open'
        }
    $connection |
        Add-Member State -NotePropertyValue Closed -Force
}

It 'Opens an SQL connection' {
    Open-SqlConnection -SqlConnection $connection

    $connection.State | Should -Be 'Open'
}
