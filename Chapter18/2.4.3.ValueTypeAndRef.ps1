function Test-Date {
    [CmdletBinding()]
    param (
        [String]$Date,

        [Ref]$DateTime
    )

    if ($value = Get-Date $Date -ErrorAction SilentlyContinue) {
        if ($DateTime) {
            $DateTime.Value = $value
        }
        $true
    } else {
        $false
    }
}
