$params = @{
    Query = "ASSOCIATORS OF {Win32_Process.Handle=$PID}"
}
Get-CimInstance @params | Select-Object CimClass -Unique

# Expects output similar to:
#
# CimClass
# --------
# root/cimv2:Win32_ComputerSystem
# root/cimv2:Win32_LogonSession
# root/cimv2:CIM_DataFile
