$string = @(
    'Name : John Doe'
    'Username : jdoe'
)
$hashtables = $string.Replace(':', '=') | ConvertFrom-StringData
$hashtables.GetType()

# Expects output:
#
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     True     Object[]                                 System.Array
