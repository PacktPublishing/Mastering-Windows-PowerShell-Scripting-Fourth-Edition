# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe "DNS servers" -ForEach @(
    'dns01'
    'dns02'
) -Fixture {
    It "The DNS service is running on $_" {
        $params = @{
            ClassName    = 'Win32_Service'
            Filter       = 'Name="dns"'
            ComputerName = $_
        }
        Get-CimInstance @params | Should -Not -BeNullOrEmpty
    }
}
