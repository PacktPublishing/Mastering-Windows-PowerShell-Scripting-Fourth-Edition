$script = {Write-Host 'Hello world'}
$bytes = [System.Text.Encoding]::Unicode.GetBytes($script)
[Convert]::ToBase64String($bytes)
