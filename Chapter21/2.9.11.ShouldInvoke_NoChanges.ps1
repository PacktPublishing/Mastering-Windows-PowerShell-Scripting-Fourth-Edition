# Add to Set-ServiceState.tests.ps1 created in 2.9.10

It 'Service is running, expected running' {
    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service -Times 0
    Should -Invoke Stop-Service -Times 0
}
