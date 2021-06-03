# Replaces tests created in 2.11.5

Describe Get-ComputerDescription {
    BeforeAll {
        $module = @{
            ModuleName = 'LocalMachine'
        }

        Mock Get-ItemPropertyValue @module {
            'Mocked description'
        }
    }

    It 'Returns the mocked description' {
        Get-ComputerDescription |
            Should -Be 'Mocked description'

        Should -Invoke Get-ItemPropertyValue @module
    }
}
