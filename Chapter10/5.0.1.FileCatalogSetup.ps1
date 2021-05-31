New-Item C:\Temp\FileCatalog -ItemType Directory -Force
1..5 | ForEach-Object {
    New-Item C:\Temp\FileCatalog\$_ -ItemType Directory -Force
    'content' | Out-File "C:\Temp\FileCatalog\$_\$_.txt"

    New-Item C:\Temp\FileCatalog\$_\$_ -ItemType Directory -Force
    'content' | Out-File "C:\Temp\FileCatalog\$_\$_\$_.txt"
}
