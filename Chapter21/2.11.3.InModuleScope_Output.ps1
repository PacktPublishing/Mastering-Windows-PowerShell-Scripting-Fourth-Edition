# Requires 2.11.1 and 2.11.2

Invoke-Pester -Script .\GetRegistryParameter.tests.ps1

# Expects output similar to:
#
# Starting discovery in 1 files.
# Discovery finished in 227ms.
# Running tests.
# [+] C:\workspace\GetRegistryParameter.tests.ps1 1.04s (152ms|702ms)
# Tests completed in 1.06s
# Tests Passed: 1, Failed: 0, Skipped: 0 NotRun: 0
