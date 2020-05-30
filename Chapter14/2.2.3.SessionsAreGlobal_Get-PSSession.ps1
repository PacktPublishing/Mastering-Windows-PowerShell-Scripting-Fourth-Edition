# Expects a second user to run the command
Get-PSSession -ComputerName PSTest | Select-Object Name, ComputerName, State

# Expects output similar to:
#
# Name     ComputerName  State
# ----     ------------  -----
# Example  PSTest        Disconnected