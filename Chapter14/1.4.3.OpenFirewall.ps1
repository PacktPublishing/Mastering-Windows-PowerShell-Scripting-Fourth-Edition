$params = @{
    DisplayName = $name = 'Windows Remote Management (HTTPS-In)'
    Name        = $name
    Profile     = 'Any'
    LocalPort   = 5986
    Protocol    = 'TCP'
}
New-NetFirewallRule @params