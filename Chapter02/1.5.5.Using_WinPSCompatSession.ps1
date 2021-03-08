$session = Get-PSSession -Name WinPSCompatSession
$process = Invoke-Command -Session $session -ScriptBlock {
    Get-WmiObject Win32_Process -Filter "ProcessID=$PID"
}
