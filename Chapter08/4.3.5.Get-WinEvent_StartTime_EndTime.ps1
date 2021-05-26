Get-WinEvent -MaxEvents 10 -FilterHashtable @{
    LogName = 'System'
    StartTime = (Get-Date).Date.AddDays(-1)
    EndTime  = (Get-Date).Date
}
