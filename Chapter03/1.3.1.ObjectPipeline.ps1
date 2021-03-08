Get-Process | Where-Object WorkingSet -gt 50MB

# Expects process objects where the WorkingSet property is greater than 50MB