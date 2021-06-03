# Requires 2.2.4 saved as division.tests.ps1

Invoke-Pester -Path .\division.tests.ps1

# Expects output:
#
# Starting discovery in 1 files.
# Discovery finished in 5ms.
# [+] C:\workspace\division.tests.ps1 100ms (4ms|93ms)
# Tests completed in 102ms
# Tests Passed: 1, Failed: 0, Skipped: 0 NotRun: 0
