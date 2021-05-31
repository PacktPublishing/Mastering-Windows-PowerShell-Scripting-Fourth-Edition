$acl = Get-Acl C:\Temp\ACL\2 
$acl.SetAccessRuleProtection($true, $true) 
Set-Acl C:\Temp\ACL\2 -AclObject $acl  