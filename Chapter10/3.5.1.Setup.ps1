$acl = Get-Acl C:\Temp\ACL\4 
$acl.SetAccessRuleProtection($true, $true)
$acl.Access |
    Where-Object IdentityReference -like '*\Authenticated Users' |
    ForEach-Object { $acl.RemoveAccessRule($_) }
Set-Acl C:\Temp\ACL\4 –AclObject $acl