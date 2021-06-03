@'
function Set-ServiceState {
    [CmdletBinding()]
    param (
        [string]$Path
    )

    Import-Csv $Path | ForEach-Object {
        $service = Get-Service $_.Name
        if ($service.Status -ne $_.ExpectedStatus) {
            if ($_.ExpectedStatus -eq 'Stopped') {
                Stop-Service -Name $_.Name
            } else {
                Start-Service -Name $_.Name
            }
        }
    }
}
'@ | Set-Content -Path module.psm1
