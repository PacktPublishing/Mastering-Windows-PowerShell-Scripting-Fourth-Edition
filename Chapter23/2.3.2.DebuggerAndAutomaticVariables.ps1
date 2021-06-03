@'
param (
    [string[]]$Name
)

$boundParameters = $PSBoundParameters
foreach ($processName in $Name) {
    Get-Process $name -ErrorAction SilentlyContinue
}
'@ | Set-Content script.ps1
Set-PSBreakpoint -Script script.ps1 -Line 7
