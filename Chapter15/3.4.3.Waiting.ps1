while ($jobs.State -eq 'Running') {
    Start-Sleep -Milliseconds 100
}