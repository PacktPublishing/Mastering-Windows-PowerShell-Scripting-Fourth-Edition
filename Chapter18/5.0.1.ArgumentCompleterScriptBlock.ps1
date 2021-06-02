{
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
