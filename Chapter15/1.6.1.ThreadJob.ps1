Start-ThreadJob { Write-Host 'Hello world' } | Receive-Job -Wait
