function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam { }

    Write-Host 'Function body'
}

# Expects error in PowerShell 7:
#
# ParserError:
# Line |
# 7 |      Write-Host 'Function body'
#   |      ~~~~~~~~~~
#   | unexpected token 'Write-Host', expected 'begin', 'process', 'end', or 'dynamicparam'.

# Expects error in Windows PowerShell:
#
# At line:1 char:28
# + function Test-DynamicParam {
#     +                            ~
#     Missing closing '}' in statement block or type definition.
#         + CategoryInfo          : ParserError: (:) [], ParentContainsErrorRecordException
#         + FullyQualifiedErrorId : MissingEndCurlyBrace
