$key = New-Item HKCU:\TestKey -ItemType Key -Force 
$acl = Get-Acl $key.PSPath 
$acl.AddAccessRule($ace) 
Set-Acl $key.PSPath -AclObject $acl 