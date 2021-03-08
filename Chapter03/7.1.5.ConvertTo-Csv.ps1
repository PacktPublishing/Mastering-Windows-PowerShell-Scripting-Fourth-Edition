Get-Process powershell | Select-Object Name, Id | ConvertTo-Csv

# Expects output similar to:
#
# #TYPE Selected.System.Diagnostics.Process
# "Name","Id"
# "powershell","404"
