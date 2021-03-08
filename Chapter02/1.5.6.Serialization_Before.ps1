# Windows PowerShell only

$process = Get-WmiObject Win32_Process -Filter "ProcessID=$PID"
$process.GetRelated('Win32_Session')
