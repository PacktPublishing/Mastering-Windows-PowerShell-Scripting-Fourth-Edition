$session | Select-Object Name, ComputerName, Availability

# Expects output similar to:
#
# Name      ComputerName  Availability
# ----      ------------  ------------
# Session1  PSTest        Busy