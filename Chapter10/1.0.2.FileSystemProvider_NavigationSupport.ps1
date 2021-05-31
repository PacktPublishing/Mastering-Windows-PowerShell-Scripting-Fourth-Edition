(Get-PSProvider FileSystem).ImplementingType.BaseType

# Expects output:
#
# IsPublic IsSerial Name                      BaseType
# -------- -------- ----                      --------
# True     False    NavigationCmdletProvider  System.Management.Automatio…
