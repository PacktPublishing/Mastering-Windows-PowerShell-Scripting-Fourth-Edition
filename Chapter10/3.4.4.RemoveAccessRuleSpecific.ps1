$acl = Get-Acl C:\Temp\ACL\3
$acl.Access | Where-Object IsInherited -eq $false | ForEach-Object {
    $acl.RemoveAccessRuleSpecific($_)
}
Set-Acl C:\Temp\ACL\3 -AclObject $acl
