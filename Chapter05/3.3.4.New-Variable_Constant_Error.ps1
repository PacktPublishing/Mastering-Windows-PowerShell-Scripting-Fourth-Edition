New-Variable -Name var -Value 1 -Option Constant

$var = 2

# Expects error:
#
# WriteError: Cannot overwrite variable var because it is read-only or constant.
