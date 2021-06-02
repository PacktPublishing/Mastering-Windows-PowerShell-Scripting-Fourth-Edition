# Expected to be saved in LocalMachine.psm1

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
