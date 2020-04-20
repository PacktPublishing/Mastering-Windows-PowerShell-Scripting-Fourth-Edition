$services = Get-CimInstance Win32_Service -Filter 'State="Running"'
$serviceInfo = foreach ($service in $services) {
    $process = Get-Process -ID $service.ProcessID
    [PSCustomObject]@{
        Name        = $service.Name
        ProcessName = $process.Name
        ProcessID   = $service.ProcessID
        Path        = $process.Path
        MemoryUsed  = $process.WorkingSet64 / 1MB
    }
}
