@'
BeforeDiscovery {
    Import-Module .\module.psm1 -Force
}

Describe Set-ServiceState {
   BeforeAll {
        Mock Get-Service -MockWith {
            [PSCustomObject]@{
                Status = 'Running'
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
}
'@ | Set-Content Set-ServiceState.tests.ps1
