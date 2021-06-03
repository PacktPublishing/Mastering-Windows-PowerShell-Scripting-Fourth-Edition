function Get-ManagementObject {
    1..10 | ForEach-Object {
        [PSCustomObject]@{
            Name     = $_
            Property = "Value$_"
        }
    }
}
