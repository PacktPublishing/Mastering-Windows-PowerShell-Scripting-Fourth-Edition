$params = @{
    ClassName = 'Win32_Process'
    Filter    = 'ExecutablePath LIKE "{0}%" AND WorkingSetSize<{1}' -f @(
        $env:WINDIR -replace '\\', '\\'
        100MB
    )
}
Get-CimInstance @params
