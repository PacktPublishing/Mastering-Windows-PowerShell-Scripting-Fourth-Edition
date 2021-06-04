[String]$thisString = 'A string value'
$thisString = $null
$thisString = Get-Process -ID $PID
$thisString.GetType()

# Expects output:
#
# IsPublic IsSerial Name                   BaseType
# -------- -------- ----                   -------
# True     True     String                 System.Object
