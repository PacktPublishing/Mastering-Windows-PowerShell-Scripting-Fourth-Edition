@'
BeforeDiscovery {
    Import-Module .\LocalMachine.psm1 -Force
}
Describe Get-ComputerDescription {
    BeforeAll {
        Mock Get-ItemPropertyValue {
            'Mocked description'
        }
    }

    It 'Returns the mocked description' {
        Get-ComputerDescription |
            Should -Be 'Mocked description'

        Should -Invoke Get-ItemPropertyValue
    }
}
'@ | Set-Content Get-ComputerDescription.tests.ps1
