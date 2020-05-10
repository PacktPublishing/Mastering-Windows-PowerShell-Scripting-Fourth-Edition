Get-CimInstance -Query "ASSOCIATORS OF {Win32_Process.Handle=$PID}"  |
    Select-Object CimClass -Unique

# Expects:

# CimClass
# --------
# root/cimv2:Win32_ComputerSystem
# root/cimv2:Win32_LogonSession
# root/cimv2:CIM_DataFile