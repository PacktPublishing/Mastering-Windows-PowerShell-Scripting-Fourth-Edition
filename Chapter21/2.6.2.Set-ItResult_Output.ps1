# Requires 2.5.2 saved as workstation.tests.ps1

Invoke-Pester -Path .\workstation.tests.ps1 -Output Detailed

# Expects output similar to:
#
# Starting discovery in 1 files.
# Discovering in C:\workspace\workstation.tests.ps1.
# Found 2 tests. 27ms
# Discovery finished in 31ms.

# Running tests from 'C:\workspace\workstation.tests.ps1'
# Describing PS developer workstation
#  Context Packages
#    [!] terraform is installed is skipped 14ms (9ms|5ms)
#    [!] git is installed is skipped 2ms (1ms|1ms)
# Tests completed in 217ms
# Tests Passed: 0, Failed: 0, Skipped: 2 NotRun: 0
