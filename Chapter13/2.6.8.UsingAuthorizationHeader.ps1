# Requires 2.6.6

$headers = @{
    Authorization = 'token {0}' -f $token
}
Invoke-RestMethod 'https://api.github.com/user/emails' -Headers $headers
