'public', 'private' |
    Resolve-Path -Path $PSScriptRoot -ChildPath { $_ } |
    Get-ChildItem -Recurse -File -Filter *.ps1 |
    ForEach-Object {
        . $_.FullName
    }
