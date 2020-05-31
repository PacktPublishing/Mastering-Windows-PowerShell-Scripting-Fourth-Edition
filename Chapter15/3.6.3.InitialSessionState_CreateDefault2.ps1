# Applies to Windows PowerShell only.

[PowerShell]::Create([InitialSessionState]::CreateDefault2()).
    AddCommand('Get-PSSnapIn').Invoke().Name

# Expects output:
#
# Microsoft.PowerShell.Core
