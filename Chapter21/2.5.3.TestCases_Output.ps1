# Requires 2.3.2 saved as division.tests.ps1

Invoke-Pester -Path .\division.tests.ps1 -Output Detailed

# Expects output:
#
# Running tests from 'C:\workspace\workstation.tests.ps1'
# Describing PS developer workstation
#  Context Packages
#    [+] Chocolatey is installed 20ms (15ms|5ms)
#    [+] terraform is installed 802ms (799ms|3ms)
#    [+] git is installed 786ms (786ms|1ms)
# Tests completed in 1.79s
# Tests Passed: 3, Failed: 0, Skipped: 0 NotRun: 0
