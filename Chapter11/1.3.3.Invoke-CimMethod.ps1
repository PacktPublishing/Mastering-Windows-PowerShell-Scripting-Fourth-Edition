$params = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{
        CommandLine = 'notepad.exe'
    }
}
$return = Invoke-CimMethod @params
