Set-Content C:\Temp\ACL\3\3.txt –Value 'New content'
$params = @{
    Path = 'C:\Temp\ACL'
    CatalogFilePath = 'C:\Temp\Security\example.cat'
    Detailed        = $true
}
Test-FileCatalog @params

# Expects output similar to:
#
# Status        : ValidationFailed
# HashAlgorithm : SHA1
# CatalogItems  : {[1\1.txt, 3AC201172677076A818A18EB1E8FEECF1A04722A...}
# PathItems     : {[1\1.txt, 3AC201172677076A818A18EB1E8FEECF1A04722A...}
# Signature     : System.Management.Automation.Signature
