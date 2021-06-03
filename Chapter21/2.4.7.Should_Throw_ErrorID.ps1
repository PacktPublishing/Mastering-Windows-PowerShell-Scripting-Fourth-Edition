# Will not run in the console. Can only be used via a saved script and Invoke-Pester.

Describe ErrorID {
    It 'Raises an error with a fully-qualified error ID' {
        { Write-Error error -ErrorID SomeErrorID -ErrorAction Stop } |
            Should -Throw -ErrorId SomeErrorID
    }
}
