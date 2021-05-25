# Requires 9.2.9

[string]$variable = 'value'
(Get-Variable variable).Attributes[0] | Format-List

# Expects output:
#
# TransformNullOptionalParameters : True
# TypeId                          : System.Management.Automation.ArgumentT...
# _convertTypes                   : {System.String}
# TargetType                      : System.String
