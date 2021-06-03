[DateTime]::DaysInMonth(2019, 13)
Get-Error | ForEach-Object {
    $_.Exception.GetType().Name
}
