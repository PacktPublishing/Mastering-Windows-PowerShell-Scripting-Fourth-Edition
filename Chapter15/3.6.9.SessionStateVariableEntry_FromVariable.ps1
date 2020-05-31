[ValidateSet('Value1', 'Value2')][String]$ComplexVariable = 'Value1'

$variable = Get-Variable ComplexVariable
$variableEntry = [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
    $variable.Name,
    $variable.Value,
    $variable.Description,
    $variable.Options,
    $variable.Attributes
)

$initialSessionState.Variables.Add($variableEntry)