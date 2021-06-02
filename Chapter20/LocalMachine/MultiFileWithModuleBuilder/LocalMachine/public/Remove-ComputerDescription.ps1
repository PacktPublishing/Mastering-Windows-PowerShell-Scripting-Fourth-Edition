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
