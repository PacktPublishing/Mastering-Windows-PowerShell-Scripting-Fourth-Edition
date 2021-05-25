[PowerShell].Assembly.GetType(
    'System.Management.Automation.TypeAccelerators'
)

# Expects output:
#
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# False    False    TypeAccelerators                         System.Object
