Get-ChildItem $env:SYSTEMROOT\*.dll |
    Select-Object -Property FullName, Length -ExpandProperty VersionInfo |
    Format-List *
