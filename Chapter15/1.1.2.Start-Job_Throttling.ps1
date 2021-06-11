$listOfJobs = 1..50
foreach ($job in $listOfJobs) {
    while (@(Get-Job -State Running).Count -gt 10) {
        Start-Sleep -Seconds 10
    }
    Start-Job {
        Start-Sleep -Seconds (Get-Random -Minimum 10 -Maximum 121)
    }
}
