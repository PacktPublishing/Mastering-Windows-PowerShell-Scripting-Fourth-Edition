# Requires 1.2.15

$ast.Find($predicate, $true)

# Expects output:
#
# CommandElements    : {Get-Process, ID, $PID}
# InvocationOperator : Unknown
# DefiningKeyword    :
# Redirections       : {}
# Extent             : Get-Process -ID $PID
# Parent             : Get-Process -ID $PID | Select-Object Name, Path
