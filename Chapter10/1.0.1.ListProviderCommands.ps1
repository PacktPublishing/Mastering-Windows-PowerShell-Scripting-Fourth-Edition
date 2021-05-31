$params = @{
    Name = @(
        '*-Item*'
        '*-ChildItem'
        '*-Content'
        '*-Acl'
        '*-Location'
    )
    Module = @(
        'Microsoft.PowerShell.Management'
        'Microsoft.PowerShell.Security'
    )
}
Get-Command @params
