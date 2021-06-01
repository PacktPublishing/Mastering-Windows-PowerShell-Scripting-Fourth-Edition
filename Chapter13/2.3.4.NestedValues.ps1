$params = @{
    Uri = 'https://api.github.com/search/code'
    Body = @{
        q = 'Get-Content language:powershell repo:powershell/powershell'
    }
}
Invoke-RestMethod @params |
    Select-Object -ExpandProperty items |
    Select-Object name, path
