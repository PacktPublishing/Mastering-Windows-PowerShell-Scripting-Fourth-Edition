# Run in Windows PowerShell

$process = Get-WmiObject Win32_Process -Filter "ProcessID=$PID"
$process.GetRelated('Win32_Session')

# Expects output similar to:
#
# AuthenticationPackage : NTLM
# LogonId               : 144983
# LogonType             : 2
# Name                  :
# StartTime             : 20200418081332.323788+060
# Status                :
