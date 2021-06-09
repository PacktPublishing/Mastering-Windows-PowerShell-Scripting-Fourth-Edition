Get-TypeData System.DateTime | Remove-TypeData
[DateTime]::Now | ConvertTo-Json | ConvertFrom-Json | Select-Object *

# Expects output similar to:
#
# Date        : 12/03/2017 00:00:00
# Day         : 12
# DayOfWeek   : Sunday
# DayOfYear   : 71
# Hour        : 12
# Kind        : Utc
# Millisecond : 58
# Minute      : 32
# Month       : 3
# Second      : 41
# Ticks       : 636249187610580000
# TimeOfDay   : 12:32:41.0580000
# Year        : 2017
