$names = 'powershell', 'pwsh', 'code'
foreach ($name in $names) {
    Get-Process $name -ErrorAction SilentlyContinue
}
