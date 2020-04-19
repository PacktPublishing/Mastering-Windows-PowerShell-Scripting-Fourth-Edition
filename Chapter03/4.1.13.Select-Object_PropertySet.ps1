Get-Process -Id $PID | Select-Object PSConfiguration

# Expects:
#
# Name   Id PriorityClass FileVersion
# ----   -- ------------- -----------
# pwsh 2220        Normal 7.0.0.0
