# Requires 1.4.1

@'
[CmdletBinding()]
param ( )

begin { }
process { }
end {
    Write-Host 'Hello world'
}
'@ | Set-Content script.ps1

$params = @{
    Path           = 'script.ps1'
    CustomRulePath = '.\CustomRules.psm1'
}
Invoke-ScriptAnalyzer @params
