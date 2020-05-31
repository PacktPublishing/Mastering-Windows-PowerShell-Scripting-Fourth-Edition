while (Get-Job -State Running) {
    $jobs = Get-Job -State Completed
    $jobs | Receive-Job | Export-Csv output.csv -Append
    $jobs | Remove-Job
    Start-Sleep -Seconds 1
}