Get-Process | ForEach-Object {
    Write-Host $_.Name -ForegroundColor Green
}