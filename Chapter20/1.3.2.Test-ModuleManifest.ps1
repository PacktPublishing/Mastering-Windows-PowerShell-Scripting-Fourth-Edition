# Requires 1.3.2

Test-ModuleManifest .\LocalMachine.psd1

# Expects output:
#
# Test-ModuleManifest: The module manifest 'C:\Workspace\LocalMachine\LocalMachine\LocalMachine.psd1' is specified with the CompatiblePSEditions key which is supported only on PowerShell version '5.1' or higher. Update the value of the PowerShellVersion key to '5.1' or higher, and try again.
#
# ModuleType Version PreRelease Name         ExportedCommands
# ---------- ------- ---------- ----         ----------------
# Script     1.0.0              LocalMachine Get-ComputerDescription
