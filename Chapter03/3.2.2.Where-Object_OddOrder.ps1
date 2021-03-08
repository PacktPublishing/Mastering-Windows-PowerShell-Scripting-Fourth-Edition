Get-Process |
   Where-Object -Property StartTime -Value (Get-Date 9:00:00) -gt
