# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe 'PS developer workstation' {
    Context 'PowerShell' {
        It 'PowerShell 7 is installed' {
        }
    }

    Context 'Packages' {
        It 'git is installed' {
        }

        It 'Terraform is installed' {
        }
    }
}
