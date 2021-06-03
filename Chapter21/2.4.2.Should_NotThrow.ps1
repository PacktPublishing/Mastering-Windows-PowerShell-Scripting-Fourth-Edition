# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe 'PS developer workstation' {
    Context 'PowerShell' {
        It 'PowerShell 7 is installed' {
            Get-Command pwsh -ErrorAction SilentlyContinue |
                ForEach-Object Version |
                Should -BeGreaterOrEqual '7.0.0'
        }
    }

    Context 'Packages' {
        It 'Chocolatey is installed' {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
    }
}
