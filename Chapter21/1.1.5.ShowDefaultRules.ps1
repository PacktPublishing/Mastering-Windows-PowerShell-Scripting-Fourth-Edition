Get-ScriptAnalyzerRule | Where-Object {
    $_.ImplementingType.BaseType.Name -ne 'ConfigurableRule'
}
