@'
BeforeDiscovery {
    Import-Module .\LocalMachine.psm1 -Force
}
Describe GetRegistryParameter {
    It 'Returns a hashtable' {
        InModuleScope -ModuleName LocalMachine {
            GetRegistryParameter
        } | Should -BeOfType [Hashtable]
    }
}
'@ | Set-Content GetRegistryParameter.tests.ps1
