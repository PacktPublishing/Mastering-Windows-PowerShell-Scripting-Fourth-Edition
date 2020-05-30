# Run on Linux
#
# Requires the following in C:\ProgramData\ssh\sshd_config on Windows:
#
# PubkeyAuthentication yes
#
# Subsystem    powershell    C:/progra~1/PowerShell/7/pwsh.exe -sshs -NoLogo -NoProfile

$params = @{
    HostName     = 'WindowsSystemNameOrIPAddress'
    UserName     = 'username'
    SSHTransport = $true
}
Enter-PSSession @params
