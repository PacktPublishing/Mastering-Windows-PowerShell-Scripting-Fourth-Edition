Get-Process -Id $PID |
    Select-Object Name, Id, Path |
    ConvertTo-Json

# Expects similar to:
#
# {
#     "Name":  "powershell_ise",
#     "Id":  3944,
#     "Path":  "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell_ise.exe"
# }