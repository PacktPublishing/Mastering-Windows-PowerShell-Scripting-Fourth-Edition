$sddl = $acl.GetSddlForm('All')
Set-PSSessionConfiguration Microsoft.PowerShell -SecurityDescriptorSddl $sddl