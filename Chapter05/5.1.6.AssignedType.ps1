[String]$thisString = "some value"
$thisString = Get-Date
$thisString.GetType()

# Expects output:
#
# IsPublic IsSerial Name                BaseType
# -------- -------- ----                --------
# True     True     String              System.Object
