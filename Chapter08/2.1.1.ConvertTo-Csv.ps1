Get-Process -Id $pid | Select-Object Name, Id, Path | ConvertTo-Csv

# Expects output similar to:
#
# "Name","Id","Path"
# "pwsh","6676","C:\Program Files\PowerShell\7\pwsh.exe"
