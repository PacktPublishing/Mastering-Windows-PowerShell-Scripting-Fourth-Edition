# Requires 1.1.8

Invoke-ScriptAnalyzer -Path .\New-Message.ps1 | Format-List

# Expects output:
#
# RuleName : PSUseShouldProcessForStateChangingFunctions
# Severity : Warning
# Line     : 1
# Column   : 10
# Message  : Function 'New-Message' has verb that could change
#            system state. Therefore, the function has to support
#            'ShouldProcess'.
