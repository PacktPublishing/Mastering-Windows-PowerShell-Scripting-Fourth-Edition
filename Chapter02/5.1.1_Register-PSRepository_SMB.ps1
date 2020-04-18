$params = @{
    Name               = 'Internal'
    SourceLocation     = '\\server\share\directory'
    InstallationPolicy = 'Trusted'
}
Register-PSRepository @params
