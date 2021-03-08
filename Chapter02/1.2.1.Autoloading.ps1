Get-Module CimCmdlets

# Expects no output

Get-CimInstance Win32_OperatingSystem | Out-Null
Get-Module CimCmdlets

# Expects module to have autoloaded

# ModuleType Version    PreRelease Name         ExportedCommands
# ---------- -------    ---------- ----         ----------------
# Binary     7.0.0.0               CimCmdlets   {Get-CimAssociatedInstance,…
