Get-PSSession | Select-Object Id, ComputerName, State

# Assumes a connection was created using New-PSSession. Expects output similar to:
#
# Id ComputerName State
# -- ------------ -----
#  1 PSTEST       Opened