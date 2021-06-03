# Expected to replace current It block in the file created in 2.9.5

It 'Ensures all services are in the desired state' {
    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service -Times 1
    Should -Invoke Start-Service -Times 1
}
