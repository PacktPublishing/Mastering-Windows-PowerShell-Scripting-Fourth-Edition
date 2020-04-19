Get-Process | Select-Object Name, @{ Name = 'ProcessID'; Expression = 'ID' }
Get-Process | Select-Object Name, @{ Name = 'ProcessID'; Expression = { $_.ID } }
