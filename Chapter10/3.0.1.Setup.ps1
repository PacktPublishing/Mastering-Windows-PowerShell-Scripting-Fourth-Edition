New-Item C:\Temp\ACL -ItemType Directory -Force
1..5 | ForEach-Object {
    New-Item C:\Temp\ACL\$_ -ItemType Directory -Force
    'content' | Out-File "C:\Temp\ACL\$_\$_.txt"

    New-Item C:\Temp\ACL\$_\$_ -ItemType Directory -Force
    'content' | Out-File "C:\Temp\ACL\$_\$_\$_.txt"
}