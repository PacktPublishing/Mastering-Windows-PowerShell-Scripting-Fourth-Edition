function Get-Status {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [String]$Name,

        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [String]$Status
    )

    process {
        '{0}: {1}' -f $Name, $Status
    }
}
