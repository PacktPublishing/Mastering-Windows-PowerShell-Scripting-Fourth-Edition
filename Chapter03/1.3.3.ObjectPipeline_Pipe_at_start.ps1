Get-Process
    | Where-Object WorkingSet -gt 50MB
    | Select-Object Name, ID
