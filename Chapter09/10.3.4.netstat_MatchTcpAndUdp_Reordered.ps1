$regex = '(?x)
    # The left hand side of the table
    ^\s*
    # Protocol column (and white space after)
    (?<Protocol>\S+)\s+
    # Local address column (and white space after)
    (?<LocalAddress>\S+)\s+
    # Foreign address column (and white space after)
    (?<ForeignAddress>\S+)\s+
    # State column (and white space after)
    (?<State>\S+)?\s+
    # PID column and the end of string
    (?<PID>\d+)$'

netstat -ano | Where-Object { $_ -match $regex } | ForEach-Object {
    $matches.Remove(0)
    [PSCustomObject]$matches
} | Select-Object Protocol, LocalAddress, ForeignAddress, State, PID |
    Format-Table

# Expects output similar to:
#
# Protocol LocalAddress ForeignAddress State     PID
# -------- ------------ -------------- -----     ---
# TCP      0.0.0.0:135  0.0.0.0:0      LISTENING 124
# TCP      0.0.0.0:445  0.0.0.0:0      LISTENING 4
# TCP      0.0.0.0:5357 0.0.0.0:0      LISTENING 4
