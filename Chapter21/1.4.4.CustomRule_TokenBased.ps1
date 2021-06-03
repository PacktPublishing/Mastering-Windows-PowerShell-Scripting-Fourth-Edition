# Should be saved as CustomRules.psm1

using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language

function PSAvoidEmptyComments {
    [CmdletBinding()]
    param (
        [Token[]]$token
    )

    $ruleName = $myinvocation.MyCommand.Name
    $token.Where{
        $_.Kind -eq 'Comment' -and
        $_.Text.Trim() -eq '#'
    }.ForEach{
        [DiagnosticRecord]@{
            Message  = 'Empty comment.'
            Extent   = $_.Extent
            RuleName = $ruleName
            Severity = 'Information'
        }
    }
}
