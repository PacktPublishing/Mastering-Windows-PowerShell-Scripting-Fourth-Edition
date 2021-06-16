# Requires 1.4.7

$string = @{}
$string

# Expects output:
#
# System.Collections.Hashtable

$string.GetType()

# Expects output:
#
# IsPublic IsSerial Name         BaseType
# -------- -------- ----         --------
# True     True     String       System.Object
