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
