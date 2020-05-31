$stack = [System.Collections.Concurrent.ConcurrentStack[PSObject]]::new()
$stack.Push('Value')

$variableEntry = [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
    'stack',
    $stack,
    ''
)

$runspace = [RunspaceFactory]::CreateRunspace([InitialSessionState]::CreateDefault2())
$runspace.InitialSessionState.Variables.Add($variableEntry)

$psInstance = [PowerShell]::Create()
$psInstance.Runspace = $runspace
$runspace.Open()

$psInstance.AddScript('
    $value = 0
    if ($stack.TryPop([Ref]$value)) {
        $value
    }
').Invoke()