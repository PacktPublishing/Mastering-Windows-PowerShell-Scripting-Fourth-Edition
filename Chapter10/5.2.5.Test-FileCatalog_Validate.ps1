$params = @{
    Path            = 'C:\Temp\FileCatalog'
    CatalogFilePath = 'C:\Temp\Security\example.cat'
    Detailed        = $true
}
$result = Test-FileCatalog @params
