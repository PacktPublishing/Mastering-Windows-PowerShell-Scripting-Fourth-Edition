# Requires 3.0.1

$myObject = [PSCustomObject]@{ Value = 1 }
Set-Value $myObject
$myObject.Value

# Expects output:
#
# 2
