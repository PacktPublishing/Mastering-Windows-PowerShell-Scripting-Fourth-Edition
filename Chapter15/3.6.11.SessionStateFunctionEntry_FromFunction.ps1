function Write-Greeting {
    Write-Host 'Hello world'
}

$function = Get-Command Write-Greeting
$functionEntry = [System.Management.Automation.Runspaces.SessionStateFunctionEntry]::new(
    $function.Name,
    $function.Definition
)

$initialSessionState.Commands.Add($functionEntry)