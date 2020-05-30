$session = New-PSSession -ComputerName $env:COMPUTERNAME
Invoke-Command { Get-Process -Id $PID } -Session $session