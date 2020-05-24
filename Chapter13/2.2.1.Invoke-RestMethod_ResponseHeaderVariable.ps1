$params = @{
    Uri                     = 'https://api.github.com/search/issues'
    Body                    = @{
       q = 'documentation state:closed repo:powershell/powershell'
    }
    ResponseHeadersVariable = 'httpHeader'
}
Invoke-RestMethod @params | Select-Object -ExpandProperty items