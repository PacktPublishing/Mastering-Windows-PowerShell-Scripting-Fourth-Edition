$regex = '^\s*(?<Protocol>\S+)\s+(?<LocalAddress>\S+)\s+(?<ForeignAddress>\S+)\s+(?<State>\S+)\s+(?<PID>\d+)$'

netstat -ano | Where-Object { $_ -match $regex } | ForEach-Object {
    $matches.Remove(0)
    [PSCustomObject]$matches
} | Select-Object Protocol, LocalAddress, ForeignAddress, State, PID | Format-Table

# Expects similar to:
#
# Protocol LocalAddress ForeignAddress State     PID
# -------- ------------ -------------- -----     ---
# TCP      0.0.0.0:135  0.0.0.0:0      LISTENING 124
# TCP      0.0.0.0:445  0.0.0.0:0      LISTENING 4
# TCP      0.0.0.0:5357 0.0.0.0:0      LISTENING 4
