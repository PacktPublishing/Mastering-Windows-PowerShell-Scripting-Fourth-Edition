# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

BeforeDiscovery {
    function Script:Enable-PhysicalAdapter {
        Get-NetAdapter -Physical | Enable-NetAdapter
    }
}

Describe Enable-PhysicalAdapter {
    BeforeAll {
        Mock Enable-NetAdapter
        Mock Get-NetAdapter {
            $params = @{
                 ClassName  = 'MSFT_NetAdapter'
                 Namespace  = 'ROOT/StandardCimv2'
                 ClientOnly = $true
            }
            New-CimInstance @params
        }
    }

    It 'Enables a physical network adapter' {
        { Enable-PhysicalAdapter } | Should -Not -Throw

        Should -Invoke Enable-NetAdapter -Times 1
    }
}
