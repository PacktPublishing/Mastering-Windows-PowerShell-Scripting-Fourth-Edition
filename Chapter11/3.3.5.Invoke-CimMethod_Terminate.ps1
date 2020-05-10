$params = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{
        CommandLine = 'notepad.exe'
    }
}
$return = Invoke-CimMethod @params

pause

Get-CimInstance Win32_Process -Filter "ProcessID=$($return.ProcessId)" |
    Invoke-CimMethod -MethodName Terminate