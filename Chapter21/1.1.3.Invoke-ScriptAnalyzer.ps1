# Requires 1.1.2

Invoke-ScriptAnalyzer .\Show-Password.ps1 | Format-List

# Expects output:
#
# RuleName : PSAvoidUsingConvertToSecureStringWithPlainText
# Severity : Error
# Line     : 9
# Column   : 18
# Message  : File 'Show-Password.ps1' uses ConvertTo-SecureString
#            with plaintext. This will expose secure information.
#            Encrypted standard strings should be used instead.

# RuleName : PSAvoidUsingPlainTextForPassword
# Severity : Warning
# Line     : 3
# Column   : 5
# Message  : Parameter '$Password' should use SecureString,
#            otherwise this will expose sensitive information. See
#            ConvertTo-SecureString for more information.
