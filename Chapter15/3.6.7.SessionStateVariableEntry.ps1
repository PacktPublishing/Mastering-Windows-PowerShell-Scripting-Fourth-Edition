$variableEntry = [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
    'Variable',
    'Value',
    'Optional description'
)

$initialSessionState = [InitialSessionState]::CreateDefault2()
$initialSessionState.Variables.Add($variableEntry)