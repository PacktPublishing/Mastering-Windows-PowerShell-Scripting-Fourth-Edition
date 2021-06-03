# Requires 2.9.1 and 2.9.2

Invoke-Pester -Path .\Set-ServiceState.tests.ps1

# Expects output:
#
# Starting discovery in 1 files.
# Discovery finished in 10ms.
# [+] C:\workspace\Set-ServiceState.tests.ps1 127ms (16ms|102ms)
# Tests completed in 130ms
# Tests Passed: 1, Failed: 0, Skipped: 0 NotRun: 0
