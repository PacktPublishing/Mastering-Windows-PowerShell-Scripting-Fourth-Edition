# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

BeforeDiscovery {
    $dnsServers = Get-ADComputer -Filter 'name -like "dns*"'
}

Describe "DNS servers" -ForEach $dnsServers -Fixture {
    It "The DNS service is running on $($_.Name)" {
        $params = @{
            ClassName    = 'Win32_Service'
            Filter       = 'Name="dns"'
            ComputerName = $_.DnsHostName
        }
        Get-CimInstance @params | Should -Not -BeNullOrEmpty
    }
}
