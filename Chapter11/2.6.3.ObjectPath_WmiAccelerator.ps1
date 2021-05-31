[Wmi]"Win32_Process.Handle=$PID" | Select-Object Name, Handle

# Expects output similar to:
#
# Name     Handle
# ----     ------
# pwsh.exe 11672
