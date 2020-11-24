$pwsh = 'C:\Program Files\PowerShell\7\pwsh.exe'
$argumentList = @(
    '-NoProfile'
    '-NoLogo'
    '-Command'
    'Write-Host "Hello world"'
)
& $pwsh $argumentList
