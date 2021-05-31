$acl = Get-Acl C:\Temp\ACL\3 
$acl.SetAccessRuleProtection($true, $true) 
Set-Acl C:\Temp\ACL\3 -AclObject $acl 