# Requires 1.2.6

Import-Module .\LocalMachine.psm1 -Force
Get-Module -Name LocalMachine |
    ForEach-Object ExportedCommands

# Expects output:
#
# Key                        Value
# ---                        -----
# Get-ComputerDescription    Get-ComputerDescription
# Remove-ComputerDescription Remove-ComputerDescription
# Set-ComputerDescription    Set-ComputerDesciption
