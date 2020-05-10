function Get-CimNamespace {
    param (
        $Namespace = 'root'
    )

    Get-CimInstance __Namespace -Namespace $Namespace | ForEach-Object {
        $childNamespace = Join-Path -Path $Namespace -ChildPath $_.Name
        $childNamespace

        Get-CimNamespace -Namespace $childNamespace
    }
}
Get-CimNamespace
