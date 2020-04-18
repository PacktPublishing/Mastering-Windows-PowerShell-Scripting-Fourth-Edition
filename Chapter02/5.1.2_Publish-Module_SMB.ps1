$params = @{
    Name            = 'pester'
    RequiredVersion = '4.10.1'
    Repository      = 'Internal'
}
Publish-Module @params
