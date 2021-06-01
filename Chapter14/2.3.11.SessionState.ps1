Get-PSSession | Select-Object Name, ComputerName, State, Availability

# Expects output similar to:
#
# Name    ComputerName State  Availability
# ----    ------------ -----  ------------
# Example PSTest       Opened Busy
