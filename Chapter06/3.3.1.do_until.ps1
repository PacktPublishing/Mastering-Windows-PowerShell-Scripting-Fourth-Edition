do {
    Write-Host "Waiting for boot"
    Start-Sleep -Seconds 5
} until (Test-Connection 'SomeComputer' -Quiet -Count 1)
