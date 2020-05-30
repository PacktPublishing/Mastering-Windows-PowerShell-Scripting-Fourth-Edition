$params = @{
    DisplayName = 'OpenSSH Server (sshd)'
    Name        = 'sshd'
    Enabled     = $true
    Direction   = 'Inbound'
    LocalPort   = 22
    Protocol    = 'TCP'
    Action      = 'Allow'
}
New-NetFirewallRule @params
