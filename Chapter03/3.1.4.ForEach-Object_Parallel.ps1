1..10 | ForEach-Object -Parallel {
    Start-Sleep -Seconds 2
    $_
}
