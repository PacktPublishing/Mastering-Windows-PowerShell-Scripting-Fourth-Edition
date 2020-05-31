$variableEntry = [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
    'PrivateVariable',
    'Value',
    'Optional description',
    [System.Management.Automation.ScopedItemOptions]::Private
)

$initialSessionState.Variables.Add($variableEntry)