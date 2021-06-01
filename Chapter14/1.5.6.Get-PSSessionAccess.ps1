using namespace System.Security.AccessControl; using namespace System.Security.Principal

[Flags()]
enum SessionAccessRight {
    All     = -536870912
    Full    = 268435456
    Read    = -2147483648
    Write   = 1073741824
    Execute = 536870912
}

function Get-PSSessionAcl {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$Name
    )

    Get-PSSessionConfiguration -Name $Name | ForEach-Object {
        [CommonSecurityDescriptor]::new(
            $false,
            $false,
            $_.SecurityDescriptorSddl
        )
    }
}

function Get-PSSessionAccess {
    [CmdletBinding()]
    param (
        [String[]]$Name
    )

    Get-PSSessionConfiguration @PSBoundParameters | ForEach-Object {
        $sessionConfiguration = $_

        (Get-PSSessionAcl -Name $_.Name).DiscretionaryAcl |
            Select-Object -Property @(
                @{ Name = 'SessionName'; Expression = {
                    $sessionConfiguration.Name
                }}
                @{ Name = 'Identity';    Expression = {
                    $_.SecurityIdentifier.Translate([NTAccount])
                }}
                @{ Name = 'AccessRight'; Expression = {
                    [SessionAccessRight]$_.AccessMask
                }}
                '*'
            )
    }
}
