$env:PSModulePath -split ';'

# If environment variables are not set, in PowerShell 7, expects:
#
# C:\Users\whoami\Documents\PowerShell\Modules
# C:\Program Files\PowerShell\Modules
# c:\program files\powershell\7\Modules
#
# May also include:
#
# C:\Windows\System32\WindowsPowerShell\v1.0\Modules
