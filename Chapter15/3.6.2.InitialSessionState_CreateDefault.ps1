# Applies to Windows PowerShell only.

[PowerShell]::Create([InitialSessionState]::CreateDefault).AddCommand('Get-PSSnapIn').Invoke().Name

# Expects output:
#
# Microsoft.PowerShell.Diagnostics
# Microsoft.PowerShell.Host
# Microsoft.PowerShell.Core
# Microsoft.PowerShell.Utility
# Microsoft.PowerShell.Management
# Microsoft.PowerShell.Security
# Microsoft.WSMan.Management