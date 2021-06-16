Mock Get-Service -ParameterFilter {
    $Name -eq 'service1'
} -MockWith {
    [PSCustomObject]@{
        Status = 'Running'
    }
}
Mock Get-Service -ParameterFilter {
    $Name -eq 'service2'
} -MockWith {
    [PSCustomObject]@{
        Status = 'Stopped'
    }
}
Mock Get-Service -ParameterFilter {
    $Name -eq 'service3'
} -MockWith {
    [PSCustomObject]@{
        Status = 'Running'
    }
}
