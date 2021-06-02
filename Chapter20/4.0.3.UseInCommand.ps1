function Get-ServiceObject {
    [CmdletBinding()]
    param (
        [PSTypeName('ServiceConnectionInfo')]
        $Connection = (Get-ServiceConnection)
    )
}
