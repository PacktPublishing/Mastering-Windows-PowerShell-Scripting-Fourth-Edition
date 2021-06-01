$params = @{
    Uri            = 'https://api.github.com/user/emails'
    Credential     = Get-Credential
    Authentication = 'Basic'
}
Invoke-RestMethod @params
