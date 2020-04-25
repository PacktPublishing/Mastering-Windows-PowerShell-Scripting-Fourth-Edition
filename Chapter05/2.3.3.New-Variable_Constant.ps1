New-Variable -Name startTime -Value (Get-Date) -Option Constant

$startTime = Get-Date

# Expects error:
#
# WriteError: Cannot overwrite variable startTime because it is read-only or constant.
