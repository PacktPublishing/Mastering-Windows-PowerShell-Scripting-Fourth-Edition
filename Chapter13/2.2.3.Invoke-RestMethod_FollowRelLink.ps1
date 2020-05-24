$params = @{
    Uri                  = 'https://api.github.com/search/issues'
    Body                 = @{
       q = 'documentation state:closed repo:powershell/powershell'
    }
    FollowRelLink        = $true
    MaximumFollowRelLink = 2
}
Invoke-RestMethod @params | Select-Object -ExpandProperty items