Invoke-Command {
    Start-Sleep -Seconds 120
    'Done'
} -ComputerName PSTest -InDisconnectedSession
