# Used to limit the number of times "next" is followed
$followLimit = 2
# The initial set of parameters, describes the search
$params = @{
    Uri = 'https://api.github.com/search/issues'
    # PowerShell will convert this to JSON
    Body = @{
        q = 'documentation state:closed repo:powershell/powershell'
    }
    ContentType = 'application/json'
}
# Just a counter, works in conjunction with followLimit.
$followed = 0

do {
    # Get the next response
    $response = Invoke-WebRequest @params
    # Convert and leave the results as output
    $response.Content |
        ConvertFrom-Json |
        Select-Object -ExpandProperty items

    # Retrive the links from the header and find the next URL
    if ($response.Headers['link'] -match '<([^>]+?)>;\s*rel="next"') {
        $next = $matches[1]
    } else {
        $next = $null
    }

    # Parameters which will be used to get the next page
    $params = @{
        Uri = $next
    }

    # Increment the followed counter
    $followed++
} until (-not $next -or $followed -ge $followLimit)
