$httpListener = [System.Net.HttpListener]::new()
$httpListener.Prefixes.Add('http://localhoist:40000/')
$httpListener.Start()

$clientId = Read-Host 'Enter the client-id'
$authorizeUrl = 'https://github.com/login/oauth/authorize?client_id={0}&scope={1}' -f @(
    $clientId
    'user:email'
)
# Let the operating system choose the browser to use for this request
Start-Process -FilePath $authorizeUrl

$context = $httpListener.GetContext()
$buffer = [Byte[]][Char[]]"<html><body>OAuth complete! Please return to PowerShell!</body></html>"

$context.Response.OutputStream.Write(
    $buffer,
    0,
    $buffer.Count
)

$context.Response.OutputStream.Close()
$httpListener.Stop()

$authorizationCode = $context.Request.QueryString['code']
