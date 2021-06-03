# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe 'PS developer workstation' {
    Context 'Packages' {
        It '<Name> is installed' -TestCases @(
            @{ Name = 'terraform' }
            @{ Name = 'git' }
        ) -Test {
            if (Get-Command choco -ErrorAction SilentlyContinue) {
                choco list -e $Name -l -r | Should -Match $Name
            } else {
                Set-ItResult -Skipped
            }
        }
    }
}
