# Run on Windows

$params = @{
    HostName     = 'LinuxSystemNameOrIPAddress'
    UserName     = $env:USERNAME
    SSHTransport = $true
    KeyFilePath  = '~\.ssh\id_rsa'
}
Enter-PSSession @params