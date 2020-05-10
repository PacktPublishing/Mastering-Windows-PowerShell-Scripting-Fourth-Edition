$acl = Get-Acl C:\Temp\ACL\3
$acl.Access | Select-Object IdentityReference, FileSystemRights, IsInherited