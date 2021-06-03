# Expected to replace current Mock for Import-Csv in the file created in 2.9.5

Mock Import-Csv -MockWith {
    [PSCustomObject]@{
        Name           = 'service1'
        ExpectedStatus = 'Running'
    }
    [PSCustomObject]@{
        Name           = 'service2'
        ExpectedStatus = 'Running'
    }
    [PSCustomObject]@{
        Name           = 'service3'
        ExpectedStatus = 'Stopped'
    }
}
