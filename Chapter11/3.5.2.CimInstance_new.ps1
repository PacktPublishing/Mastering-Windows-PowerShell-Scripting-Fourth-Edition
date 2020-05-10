$class = Get-CimClass Win32_ProcessStartup
$startupInfo = [CimInstance]::new($class)