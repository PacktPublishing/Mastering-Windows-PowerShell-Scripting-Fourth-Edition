Get-CimInstance CIM_ProcessExecutable |
    Where-Object Dependent -match $PID |
    Select-Object -First 1

# Expects output similar to:
#
# Antecedent         : CIM_DataFile (Name = "C:\WINDOWS\System32\Windo...)
# Dependent          : Win32_Process (Handle = "11672")
# BaseAddress        : 2340462460928
# GlobalProcessCount :
# ModuleInstance     : 4000251904
# ProcessCount       : 0
# PSComputerName     :
