$params = @{
    Uri        = 'https://api.github.com/user/emails'
    Credential = Get-Credential
}
Invoke-RestMethod @params