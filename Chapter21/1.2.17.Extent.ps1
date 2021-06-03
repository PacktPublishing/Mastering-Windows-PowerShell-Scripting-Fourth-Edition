# Requires 1.2.15

$ast.Find($predicate, $true).Extent

# Expects output:
#
# File                :
# StartScriptPosition : System.Management.Automation.Language.Int...
# EndScriptPosition   : System.Management.Automation.Language.Int...
# StartLineNumber     : 1
# StartColumnNumber   : 10
# EndLineNumber       : 1
# EndColumnNumber     : 30
# Text                : Get-Process -ID $PID
# StartOffset         : 9
# EndOffset           : 29
