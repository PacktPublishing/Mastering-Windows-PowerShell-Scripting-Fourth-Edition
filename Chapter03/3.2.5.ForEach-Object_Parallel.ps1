1..10 | ForEach-Object -Parallel -Process {
    Start-Sleep -Seconds 2
    $_
}
