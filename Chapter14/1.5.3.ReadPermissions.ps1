using namespace System.Security.AccessControl

$sddl = Get-PSSessionConfiguration microsoft.powerShell |
    Select-Object -ExpandProperty SecurityDescriptorSddl
$acl = [CommonSecurityDescriptor]::new(
    $false,
    $false,
    $sddl
)
$acl.DiscretionaryAcl