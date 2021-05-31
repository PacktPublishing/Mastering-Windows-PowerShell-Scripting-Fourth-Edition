$acl = Get-Acl C:\Temp\ACL\2 
$acl.SetAccessRuleProtection($false, $false) 
Set-Acl C:\Temp\ACL\2 -AclObject $acl 