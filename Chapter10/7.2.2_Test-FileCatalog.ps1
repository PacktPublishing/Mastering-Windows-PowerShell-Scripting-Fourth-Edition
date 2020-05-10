Set-Content C:\Temp\ACL\3\3.txt –Value 'New content'
$params = @{
    Path = 'C:\Temp\ACL'
    CatalogFilePath = 'C:\Temp\Security\example.cat'
    Detailed        = $true
}
Test-FileCatalog @params