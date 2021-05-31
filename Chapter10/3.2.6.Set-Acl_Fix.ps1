$acl = Get-Acl C:\Temp\ACL\3 
$acl.SetAccessRuleProtection($false, $false) 
Set-Acl C:\Temp\ACL\3 -AclObject $acl 