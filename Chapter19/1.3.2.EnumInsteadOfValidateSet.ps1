enum Ensure {
    Absent
    Present
}

function Test-ParameterValue {
    param (
        [Parameter(Mandatory)]
        [Ensure]$Ensure
    )
}
