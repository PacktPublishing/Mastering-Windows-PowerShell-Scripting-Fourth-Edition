using assembly System.Web

$queryString = [System.Web.HttpUtility]::ParseQueryString('')
$queryString.Add(
    'q',
    'Get-Content language:powershell repo:powershell/powershell'
)
$uri = 'https://api.github.com/search/code?{0}' -f $queryString
Invoke-RestMethod $uri
