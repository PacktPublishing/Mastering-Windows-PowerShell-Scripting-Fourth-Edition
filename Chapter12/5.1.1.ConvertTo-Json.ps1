Get-Process -Id $PID |
    Select-Object Name, Id, Path |
    ConvertTo-Json

# Expects output similar to:
#
# {
#     "Name":  "pwsh",
#     "Id":  3944,
#     "Path":  " C:\\Program Files\\PowerShell\\7\\pwsh.exe"
# }
