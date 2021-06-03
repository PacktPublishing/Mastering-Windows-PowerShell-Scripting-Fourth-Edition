@'
BeforeDiscovery {
    Import-Module .\module.psm1 -Force
}

Describe Set-ServiceState {
   BeforeAll {
        Mock Get-Service -MockWith {
            [PSCustomObject]@{
                Status = 'Stopped'
            }
        }
        Mock Import-Csv -MockWith {
            [PSCustomObject]@{
                Name           = 'service1'
                ExpectedStatus = 'Running'
            }
        }
        Mock Start-Service
        Mock Stop-Service
    }

    It 'When ExpectedStatus is running, starts the service' {
        Set-ServiceState -Path file.csv

        Should -Invoke Start-Service
    }
}
'@ | Set-Content Set-ServiceState.tests.ps1
