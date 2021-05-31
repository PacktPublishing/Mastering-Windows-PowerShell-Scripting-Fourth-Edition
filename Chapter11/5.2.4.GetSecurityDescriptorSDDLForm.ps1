$acl = Get-Acl C:\
$acl.SetSecurityDescriptorSddlForm($sddlString)
