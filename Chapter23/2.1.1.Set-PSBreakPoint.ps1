Set-PSBreakpoint -Command Get-Process
$names = 'powershell', 'pwsh', 'code'
foreach ($name in $names) {
    Get-Process $name -ErrorAction SilentlyContinue
}

# Expects DBG prompt:
#
# Hit Command breakpoint on 'Get-Process'

# At line:2 char:5
# +     Get-Process $name -ErrorAction SilentlyContinue
# +     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# [DBG]: PS C:\workspace>>
