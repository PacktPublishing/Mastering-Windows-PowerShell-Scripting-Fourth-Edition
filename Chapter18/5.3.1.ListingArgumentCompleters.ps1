using namespace System.Reflection

$localPipeline = [PowerShell].Assembly.GetType(
    'System.Management.Automation.Runspaces.LocalPipeline'
)
$getExecutionContextFromTLS = $localPipeline.GetMethod(
    'GetExecutionContextFromTLS',
    [BindingFlags]'Static, NonPublic'
)
$internalExecutionContext = $getExecutionContextFromTLS.Invoke(
    $null,
    [BindingFlags]'Static, NonPublic',
    $null,
    $null,
    $psculture
)
$customArgumentCompletersProperty = $internalExecutionContext.GetType().GetProperty(
    'CustomArgumentCompleters',
    [BindingFlags]'NonPublic, Instance'
)
$customArgumentCompletersProperty.GetGetMethod($true).Invoke(
    $internalExecutionContext,
    [BindingFlags]'Instance, NonPublic, GetProperty',
    $null,
    @(),
    $psculture
)
