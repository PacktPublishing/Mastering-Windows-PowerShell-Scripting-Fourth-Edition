# Requires 4.2.1

function Get-EmptyOutput { return $null }
Get-EmptyOutput | Get-InputObject

# Expects error:
#
# Get-InputObject: Cannot bind argument to parameter 'InputObject' because it is null.
