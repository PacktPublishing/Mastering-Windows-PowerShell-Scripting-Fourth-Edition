function Connect-Service {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$Server
    )

    $Script:connection = [PSCustomObject]@{
        Server     = $Server
        PSTypeName = 'ServiceConnectionInfo'
    }
}
