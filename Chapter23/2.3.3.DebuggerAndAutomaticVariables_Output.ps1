.\script.ps1 -Name 'pwsh'

# Expects debugger to start:
#
# Hit Line breakpoint on 'C:\workspace\script.ps1:7'

# At C:\workspace\script.ps1:7 char:5
# +     Get-Process $name
# +     ~~~~~~~~~~~~~~~~~

$PSBoundParameters

# Expects no output.

$boundParameters

# Expects output:
#
# Key  Value
# ---  -----
# Name {pwsh}
