# Requires 1.4.4

$params = @{
    Path           = 'script.ps1'
    CustomRulePath = '.\CustomRules.psm1'
}
Invoke-ScriptAnalyzer @params

# Expects output:
#
# RuleName             Severity     ScriptName Line  Message
# --------             --------     ---------- ----  -------
# PSAvoidEmptyComments Information  script.ps1 4     Empty comment.
