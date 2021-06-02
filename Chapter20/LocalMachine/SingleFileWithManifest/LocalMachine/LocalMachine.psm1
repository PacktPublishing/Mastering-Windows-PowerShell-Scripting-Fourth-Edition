function GetRegistryParameter {
    [CmdletBinding()]
    [OutputType([Hashtable])]
    param ( )

    @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
}

function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = GetRegistryParameter
    Get-ItemPropertyValue @getParams
}

function Remove-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    $removeParams = GetRegistryParameter
    if ($PSCmdlet.ShouldProcess('Removing computer description')) {
        Remove-ItemProperty @removeParams
    }
}

function Set-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([string])]
    param (
        [Parameter(Mandatory, Position = 1, ValueFromPipeline)]
        [string]$Description
    )

    process {
        if ($pscmdlet.ShouldProcess(
            'Removing computer description')) {

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
