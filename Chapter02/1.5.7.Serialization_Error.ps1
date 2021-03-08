# PowerShell 7 only. Expects WinPSCompatSession to exist. See 1.5.3.

$session = Get-PSSession -Name WinPSCompatSession
$process = Invoke-Command -Session $session -ScriptBlock {
    Get-WmiObject Win32_Process -Filter "ProcessID=$PID"
}
$process.GetRelated('Win32_Session')

# Expects error:
#
# InvalidOperation: Method invocation failed because [Deserialized.System.Management.ManagementObject#root\cimv2\Win32_Process] does not contain a method named 'GetRelated'.
