Get-Process | ForEach-Object -Process {
    Write-Host $_.Name -ForegroundColor Green
}
