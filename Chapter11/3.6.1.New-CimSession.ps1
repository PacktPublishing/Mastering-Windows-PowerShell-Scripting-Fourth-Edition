$cimSession = New-CimSession -ComputerName Remote1
$cimSession

# Expects similar to:
#
# Id           : 1
# Name         : CimSession1
# InstanceId   : 1cc2a889-b649-418c-94a2-f24e033883b4
# ComputerName : Remote1
# Protocol     : WSMAN