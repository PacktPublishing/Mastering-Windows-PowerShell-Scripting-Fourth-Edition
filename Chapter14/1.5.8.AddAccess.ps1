using namespace System.Security.AccessControl; using namespace System.Security.Principal

$sessionName = "PowerShell.7"

$identity = "$env:USERDOMAIN\$env:USERNAME"
$acl = Get-PSSessionAcl -Name $sessionName
$acl.DiscretionaryAcl.AddAccess(
    'Allow',
    ([NTAccount]$identity).Translate([SecurityIdentifier]),
    [Int][SessionAccessRight]'Full',
    'None',   # Inheritance flags
    'None'    # Propagation flags
)
