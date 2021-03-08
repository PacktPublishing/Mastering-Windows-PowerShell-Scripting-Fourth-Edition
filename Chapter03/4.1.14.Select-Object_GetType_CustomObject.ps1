(Get-Process | Select-Object -Property Path, Company -First 1).GetType()
