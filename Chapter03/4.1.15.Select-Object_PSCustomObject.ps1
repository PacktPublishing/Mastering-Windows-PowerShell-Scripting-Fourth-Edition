(Get-Process | Select-Object -First 1).GetType()

# Expects:
#
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     False    Process                                  System.ComponentModel.Component
