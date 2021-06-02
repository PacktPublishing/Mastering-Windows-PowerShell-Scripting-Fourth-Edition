# Requires 5.1.3
# Requires console restart after 5.1.2

Import-Something
Get-Module Module

# Expects output:
#
# ModuleType Version PreRelease Name   ExportedCommands
# ---------- ------- ---------- ----   ----------------
# Script     0.0.1              Module Get-Something

[ModuleClass]::new()

# Expects error:
#
# InvalidOperation: Unable to find type [ModuleClass].
