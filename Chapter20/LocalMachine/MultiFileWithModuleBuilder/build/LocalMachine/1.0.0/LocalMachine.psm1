#Region '.\enum\Ensure.ps1' 0
enum Ensure {
    Absent
    Present
}
#EndRegion '.\enum\Ensure.ps1' 5
#Region '.\classes\ComputerDescription.ps1' 0
[DscResource()]
class ComputerDescription {
    [DscProperty(Key)]
    [Ensure] $Ensure

    [DscProperty()]
    [string] $Description

    [ComputerDescription] Get() {
        try {
            $this.Description = Get-ComputerDescription -ErrorAction Stop
            $this.Ensure = 'Present'
        } catch {
            $this.Description = ''
            $this.Ensure = 'Absent'
        }
        return $this
    }

    [void] Set() {
        if ($this.Ensure -eq 'Present') {
            Set-ComputerDescription -Description $this.Description
        } else {
            Remove-ComputerDescription
        }
    }

    [bool] Test() {
        $currentDescription = Get-ComputerDescription -ErrorAction SilentlyContinue

        if ($this.Ensure -eq 'Present') {
            if ($currentDescription -ne $this.Description) {
                return $false
            }
        } else {
            if ($currentDescription) {
                return $false
            }
        }
        return $true
    }
}
#EndRegion '.\classes\ComputerDescription.ps1' 43
#Region '.\private\GetRegistryParameter.ps1' 0
function GetRegistryParameter {
    <#
    .SYNOPSIS
        Get the registry key and value for a computer description.

    .DESCRIPTION
        Get the registry key path and value name as a hashtable which
        can be used to configure a computer description.
    #>

    [CmdletBinding()]
    [OutputType([Hashtable])]
    param ( )

    @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
}
#EndRegion '.\private\GetRegistryParameter.ps1' 20
#Region '.\public\Get-ComputerDescription.ps1' 0
function Get-ComputerDescription {
    <#
    .SYNOPSIS
        Get description of the computer.

    .DESCRIPTION
        Get description of the computer from the registry.

    .EXAMPLE
        Get-ComputerDescription

        Get the current computer description.
    #>

    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = GetRegistryParameter
    Get-ItemPropertyValue @getParams
}
#EndRegion '.\public\Get-ComputerDescription.ps1' 22
#Region '.\public\Remove-ComputerDescription.ps1' 0
function Remove-ComputerDescription {
    <#
    .SYNOPSIS
        Remove an existing description for a computer.

    .DESCRIPTION
        Remove an existing description for a computer in the registry.

    .EXAMPLE
        Remove-ComputerDescription

        Remove any existing computer description.
    #>

    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    $removeParams = GetRegistryParameter
    if ($PSCmdlet.ShouldProcess('Removing computer description')) {
        Remove-ItemProperty @removeParams
    }
}
#EndRegion '.\public\Remove-ComputerDescription.ps1' 23
#Region '.\public\Set-ComputerDescription.ps1' 0
function Set-ComputerDescription {
    <#
    .SYNOPSIS
        Set a description for the computer.

    .DESCRIPTION
        Set a description for the computer in the registry.

    .EXAMPLE
        Set-ComputerDescription -Description 'My computer'

        Set the description of the current computer to "My computer".
    #>

    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([string])]
    param (
        # The description which should be set for the current computer.
        [Parameter(Mandatory, Position = 1, ValueFromPipeline)]
        [string]$Description
    )

    process {
        if ($pscmdlet.ShouldProcess('Removing computer description')) {
            $setParams = GetRegistryParameter
            $params = @{
                Type  = 'String'
                Value = $Description
                Force = $true
            }
            try {
                New-ItemProperty @setParams @params
            } catch {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
    }
}
#EndRegion '.\public\Set-ComputerDescription.ps1' 39
