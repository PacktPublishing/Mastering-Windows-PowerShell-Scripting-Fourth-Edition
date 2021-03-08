Get-Process |
    Where-Object WorkingSet64 -gt 50MB |
    Select-Object -Property Name, ID
