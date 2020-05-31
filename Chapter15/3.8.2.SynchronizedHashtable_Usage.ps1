$variableEntry = [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
    'synchronizedHashtable',
    $synchronizedHashtable,
    ''
)

$runspace = [RunspaceFactory]::CreateRunspace([InitialSessionState]::CreateDefault2())
$runspace.InitialSessionState.Variables.Add($variableEntry)

$psInstance = [PowerShell]::Create()
$psInstance.Runspace = $runspace
$runspace.Open()

$psInstance.AddScript(
    '$synchronizedHashtable.Add("NewKey", "NewValue")'
).Invoke()
