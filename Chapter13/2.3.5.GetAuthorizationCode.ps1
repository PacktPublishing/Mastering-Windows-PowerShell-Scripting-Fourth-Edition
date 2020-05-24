$authorize = 'https://github.com/login/oauth/authorize?client_id={0}&scope={1}' -f @(
    $clientId
    'user:email'
)
