# Add to Set-ServiceState.tests.ps1 created in 2.9.10

It 'Service is running, expected stopped' {
    Mock Import-Csv -MockWith {
        [PSCustomObject]@{
            Name           = 'service1'
            ExpectedStatus = 'Stopped'
        }
    }

    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service -Times 0
    Should -Invoke Stop-Service -Times 1
}
