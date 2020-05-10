Get-CimInstance -Query "ASSOCIATORS OF {Win32_Process.Handle=$PID} WHERE ResultClass = CIM_DATAFILE" |
    Select-Object Name

# Expects similar to:
#
# Name
# ----
# c:\windows\system32\windowspowershell\v1.0\powershell_ise.exe
# c:\windows\system32\ntdll.dll
# c:\windows\system32\mscoree.dll
# c:\windows\system32\sysfer.dll
# c:\windows\system32\kernel32.dll