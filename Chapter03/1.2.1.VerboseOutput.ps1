$computerSystem = Get-CimInstance Win32_ComputerSystem -Verbose

# Expects verbose message:
#
# VERBOSE: Perform operation 'Enumerate CimInstances' with following parameters, ''namespaceName' = root\cimv2,'className' = Win32_ComputerSystem'.
# VERBOSE: Operation 'Enumerate CimInstances' complete.

$computerSystem

# Expects output similar to:
#
# Name    PrimaryOwnerName    Domain       TotalPhysicalMemory    Model
# ----    ----------------    ------       -------------------    -----
# NAME    Username            WORKGROUP    17076875264            Model
