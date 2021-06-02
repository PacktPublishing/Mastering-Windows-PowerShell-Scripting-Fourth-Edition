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
