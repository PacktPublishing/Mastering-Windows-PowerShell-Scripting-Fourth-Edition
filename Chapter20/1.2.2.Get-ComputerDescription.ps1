# Expected to be saved in LocalMachine.psm1

function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = GetRegistryParameter
    Get-ItemPropertyValue @getParams
}
