$params = @{
    Path = 'HKLM:\SOFTWARE\OpenSSH'
    Name = 'DefaultShell'
    Value = Join-Path -Path $pshome -ChildPath 'pwsh.exe'
    Force = $true
}
New-ItemProperty @params
