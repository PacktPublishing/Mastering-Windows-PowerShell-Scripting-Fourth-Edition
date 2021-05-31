$class = Get-CimClass Win32_ProcessStartup
$startupInfo = New-CimInstance -CimClass $class -ClientOnly
$startupInfo.X = 50
$startupInfo.Y = 50
$startupInfo.Title = 'This is the window title'

$params = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{
        CommandLine               = 'pwsh.exe'
        ProcessStartupInformation = $startupInfo
    }
}
$returnObject = Invoke-CimMethod @params
