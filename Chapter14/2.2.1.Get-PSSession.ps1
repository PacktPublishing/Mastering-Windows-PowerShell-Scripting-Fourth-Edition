# Requires 2.1.1

Get-PSSession | Select-Object Id, ComputerName, State

# Expects output similar to:
#
# Id ComputerName State
# -- ------------ -----
#  1 PSTEST       Opened
