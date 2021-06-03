Get-ScriptAnalyzerRule | Where-Object {
    $_.ImplementingType.BaseType.Name -eq 'ConfigurableRule'
}
