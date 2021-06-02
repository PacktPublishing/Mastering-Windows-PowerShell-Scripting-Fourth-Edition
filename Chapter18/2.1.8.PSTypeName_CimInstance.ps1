function Test-PSTypeName {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory,
            ValueFromPipeline,
            ParameterSetName = 'InputObject (cdxml)'
        )]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
        [CimInstance[]]$InputObject
   )
}
