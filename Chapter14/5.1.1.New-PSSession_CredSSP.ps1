$params = @{
    ComputerName   = 'PSTest'
    Credential     = Get-Credential
    Authentication = 'CredSSP'
}
New-PSSession @params
