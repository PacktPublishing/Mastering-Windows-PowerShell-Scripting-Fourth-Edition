$params = @{
    Path            = 'C:\Temp\ACL'
    CatalogFilePath = 'C:\Temp\Security\example.cat'
    Detailed        = $true
}
$result = Test-FileCatalog @params