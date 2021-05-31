$query = '
SELECT Name, CreationDate
FROM Win32_Process
WHERE ProcessId={0}
' -f $PID
([WmiSearcher]$query).Get() | Select-Object Name, CreationDate

# Expects output simmilar to:
#
# Name     CreationDate
# ----     ------------
# pwsh.exe 20200510090416.263973+060
