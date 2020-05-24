$params = @{
    Uri    = 'https://github.com/login/oauth/access_token'
    Method = 'POST'
    Body   = @{
        client_id     = $clientId
        client_secret = $clientSecret
        code          = $authorizationCode
    }
}
$response = Invoke-RestMethod @params
$token = [System.Web.HttpUtility]::ParseQueryString($response)['access_token']
