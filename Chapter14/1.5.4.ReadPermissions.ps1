using namespace System.Security.AccessControl

$sddl = Get-PSSessionConfiguration PowerShell.7 |
    Select-Object -ExpandProperty SecurityDescriptorSddl
$acl = [CommonSecurityDescriptor]::new(
    $false,
    $false,
    $sddl
)
$acl.DiscretionaryAcl
