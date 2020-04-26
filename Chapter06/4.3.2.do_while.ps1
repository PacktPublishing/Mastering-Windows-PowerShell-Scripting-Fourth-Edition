do {
    Write-Host "Waiting for shutdown"
    Start-Sleep -Seconds 5
} while (Test-Connection 'SomeComputer' -Quiet -Count 1)
