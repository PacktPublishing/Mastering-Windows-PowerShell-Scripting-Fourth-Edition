$acl = Get-Acl C:\Temp\ACL\1
$acl.SetOwner([System.Security.Principal.NTAccount]'Administrator')
Set-Acl C:\Temp\ACL\1 -AclObject $acl  