# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe 'PS developer workstation' {
    Context 'Packages' {
        It 'Chocolatey is installed' -Skip:(-not $IsWindows) {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
    }
}
