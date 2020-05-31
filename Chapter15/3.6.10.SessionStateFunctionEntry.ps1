$functionEntry = [System.Management.Automation.Runspaces.SessionStateFunctionEntry]::new(
    'Write-Greeting',
    'Write-Host "Hello world"'
)

$initialSessionState.Commands.Add($functionEntry)