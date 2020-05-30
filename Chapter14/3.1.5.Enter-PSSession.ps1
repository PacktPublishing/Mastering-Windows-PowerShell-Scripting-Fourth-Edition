# Run on Windows

$params = @{
    ComputerName   = 'LinuxSystemNameOrIPAddress'
    Credential     = Get-Credential
    Authentication = 'Basic'
    UseSsl         = $true
    SessionOption  = New-PSSessionOption -SkipCACheck -SkipCNCheck
}
Enter-PSSession @params