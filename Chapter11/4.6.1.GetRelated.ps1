([WmiSearcher]'SELECT * FROM Win32_LogonSession').Get() | ForEach-Object {
    [PSCustomObject]@{
        LogonName      = $_.GetRelated('Win32_Account').Caption
        SessionStarted = [System.Management.ManagementDateTimeConverter]::ToDateTime(
            $_.StartTime
        )
    }
}
