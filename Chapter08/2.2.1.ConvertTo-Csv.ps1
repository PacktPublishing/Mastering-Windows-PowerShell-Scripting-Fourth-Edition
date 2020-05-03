Get-Process -Id $pid |
    Select-Object Name, Id, Path |
    ConvertTo-Csv

# Expects output:
#
# "Name","Id","Path"
# "powershell_ise","9956","C:\WINDOWS\System32\WindowsPowerShell\v1.0\powershell_ise.exe"