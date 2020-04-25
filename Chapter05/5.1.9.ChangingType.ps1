[String]$thisString = "some value"
[DateTime]$thisString = Get-Date
$thisString.GetType()

# Expects output:
#
# IsPublic IsSerial Name                BaseType
# -------- -------- ----                --------
# True     True     DateTime            System.ValueType
