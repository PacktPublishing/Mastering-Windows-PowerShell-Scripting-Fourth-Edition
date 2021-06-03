try {
    [DateTime]::DaysInMonth(2019, 13)
} catch [ArgumentOutOfRangeException] {
    Write-Host 'Out of range'
}
