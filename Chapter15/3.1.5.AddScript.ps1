$script = @'
    Get-Process -Name powershell
    Get-Service | Select-Object -First 1
'@
[PowerShell]::Create().AddScript($script).Invoke()