ConvertTo-Json -InputObject @(
    Get-Process -ID $PID | Select-Object Name, ID
)
