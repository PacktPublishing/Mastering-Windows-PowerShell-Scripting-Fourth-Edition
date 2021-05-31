([WmiClass]'Win32_Share').Create.OverloadDefinitions -split '(?<=,)'

# Expects output:
#
# System.Management.ManagementBaseObject Create(System.String Path,
#  System.String Name,
#  System.UInt32 Type,
#  System.UInt32 MaximumAllowed,
#  System.String Description,
#  System.String Password,
#  System.Management.ManagementObject#Win32_SecurityDescriptor Access)
