while (-not (Test-Path $env:TEMP\test.txt -PathType Leaf)) {
    Start-Sleep -Seconds 10
}
