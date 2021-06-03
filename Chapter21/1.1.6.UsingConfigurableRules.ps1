$params = @{
    ScriptDefinition = 'get-process'
    Settings = @{
        Rules = @{
            PSUseCorrectCasing = @{
                Enable = $true
            }
        }
    }
}
Invoke-ScriptAnalyzer @params
