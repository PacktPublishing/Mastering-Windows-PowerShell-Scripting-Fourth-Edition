@'
Describe 'PS developer workstation' {
    It 'PowerShell 7 is installed' {
        $PSVersionTable.PSVersion |
            Should -BeGreaterOrEqual 7.0.0
    }
}
'@ | Set-Content workstation.tests.ps1

Invoke-Pester -Path workstation.tests.ps1
