# Requires 1.2.13

$ast.Find($predicate, $true)

# Expects output:
#
# Attributes         : {}
# UsingStatements    : {}
# ParamBlock         :
# BeginBlock         :
# ProcessBlock       :
# EndBlock           : Get-Process -ID $PID | Select-Object Name, Path
# DynamicParamBlock  :
# ScriptRequirements :
# Extent             : { Get-Process -ID $PID | Select-Object Name,
#                      Path }
# Parent             : { Get-Process -ID $PID | Select-Object Name,
#                      Path }
