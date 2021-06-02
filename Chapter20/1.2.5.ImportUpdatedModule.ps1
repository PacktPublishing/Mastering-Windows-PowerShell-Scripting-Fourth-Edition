# Requires 1.2.2, 1.2.3, and 1.2.4

Import-Module .\LocalMachine.psm1 -Force -Verbose

# Expects output similar to:
#
# VERBOSE: Loading module from path 'C:\workspace\LocalMachine.psm1'.
# VERBOSE: Importing function 'Get-ComputerDescription'.
# VERBOSE: Importing function 'Remove-ComputerDescription'.
# VERBOSE: Importing function 'Set-ComputerDescription'.

Get-Module -Name LocalMachine |
    ForEach-Object ExportedCommands

# Expects output:
#
# Key                        Value
# ---                        -----
# Get-ComputerDescription    Get-ComputerDescription
# GetRegistryParameters      GetRegistryParameters
# Remove-ComputerDescription Remove-ComputerDescription
# Set-ComputerDescription    Set-ComputerDesciption
