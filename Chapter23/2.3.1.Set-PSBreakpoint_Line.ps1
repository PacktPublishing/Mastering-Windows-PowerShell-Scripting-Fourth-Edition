@'
$names = 'powershell', 'pwsh', 'code'
foreach ($name in $names) {
    Get-Process $name -ErrorAction SilentlyContinue
}
'@ | Set-Content script.ps1
Set-PSBreakpoint -Script script.ps1 -Line 3
.\script.ps1
