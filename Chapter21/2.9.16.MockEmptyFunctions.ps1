# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe CreateDnsZone {
    BeforeAll {
        function Get-DnsServerZone { }
        function Add-DnsServerPrimaryZone { }

        Mock Get-DnsServerZone
        Mock Add-DnsServerPrimaryZone
    }

    It 'When the zone does not exist, creates a zone' {
        New-DnsZone -Name name

        Assert-MockCalled Add-DnsServerPrimaryZone
    }
}
