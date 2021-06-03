# Add to Set-ServiceState.tests.ps1 created in 2.9.10

It 'Service is stopped, expected running' {
    Mock Get-Service -MockWith {
        [PSCustomObject]@{
            Status = 'Stopped'
        }
    }

    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service -Times 1
    Should -Invoke Stop-Service -Times 0
}
