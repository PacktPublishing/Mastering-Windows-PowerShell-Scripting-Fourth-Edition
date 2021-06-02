function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        $Action
    )
}

$params = @{
    CommandName   = 'Test-ArgumentCompleter'
    ParameterName = 'Action'
    ScriptBlock   = {
        param (
            $commandName,
            $parameterName,
            $wordToComplete,
            $commandAst,
            $fakeBoundParameter
        )

        $possibleValues = 'Start', 'Stop', 'Create', 'Delete'
        $possibleValues -like "$wordToComplete*"
    }
}
Register-ArgumentCompleter @params
