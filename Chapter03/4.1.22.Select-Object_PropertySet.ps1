Get-Process -Id $PID | Select-Object -Property PSConfiguration

# Expects output similar to:
#
# Name   Id PriorityClass FileVersion
# ----   -- ------------- -----------
# pwsh 2220        Normal 7.0.0.0
