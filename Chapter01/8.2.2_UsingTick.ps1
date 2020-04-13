$taskAction = New-ScheduledTaskAction `
    -Execute pwsh.exe `
    -Argument 'Write-Host "hello world"'
$taskTrigger = New-ScheduledTaskTrigger `
    -Daily `
    -At '00:00:00'
Register-ScheduledTask `
    -TaskName 'TaskName' `
    -Action $taskAction `
    -Trigger $taskTrigger `
    -RunLevel 'Limited' `
    -Description 'This line is too long to read'
