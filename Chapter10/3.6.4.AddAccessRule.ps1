$acl = Get-Acl C:\Temp\ACL\5 
$acl.AddAccessRule($ace) 
Set-Acl C:\Temp\ACL\5 -AclObject $acl 