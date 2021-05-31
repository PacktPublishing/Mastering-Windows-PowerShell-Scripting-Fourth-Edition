(Get-PSProvider FileSystem).ImplementingType.ImplementedInterfaces

# Expects output:
#
# IsPublic IsSerial Name                                BaseType
# -------- -------- ----                                --------
# True     False    IResourceSupplier
# True     False    IContentCmdletProvider
# True     False    IPropertyCmdletProvider
# True     False    ISecurityDescriptorCmdletProvider
# True     False    ICmdletProviderSupportsHelp
