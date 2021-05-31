$invokeParams = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{
        CommandLine = 'notepad.exe'
    }
}
$return = Invoke-CimMethod @invokeParams

$getParams = @{
    ClassName = 'Win32_Process'
    Filter    = 'ProcessId={0}' -f $return.ProcessId
}
Get-CimInstance @getParams |
    Invoke-CimMethod -MethodName Terminate -Arguments @{Reason = 5}
