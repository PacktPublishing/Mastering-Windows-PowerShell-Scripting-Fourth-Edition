# Requires 2.11.7

.\script.ps1

# Expects output:
#
# Starting discovery in 1 files.
# Discovery finished in 7ms.
# [-] Get-ComputerDescription.Returns the mocked description 5ms (4ms|1ms)
#  PSArgumentException: Property srvcomment does not exist at path HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters.
#  at Get-ComputerDescription, C:\workspace\LocalMachine.psm1:16
#  at <ScriptBlock>, C:\workspace\Get-ComputerDescription.tests.ps1:12
# Tests completed in 117ms
# Tests Passed: 0, Failed: 1, Skipped: 0 NotRun: 0
