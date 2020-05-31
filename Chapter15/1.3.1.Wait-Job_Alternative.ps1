while (Get-Job -State Running) {
    $jobs = Get-Job -State Completed
    $jobs | Receive-Job
    $jobs | Remove-Job
    Start-Sleep -Seconds 1
}