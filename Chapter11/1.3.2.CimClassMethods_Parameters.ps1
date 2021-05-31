(Get-CimClass Win32_Process).CimClassMethods['Create'].Parameters

# Expects output:
#
# Name                          CimType    Qualifiers
# ----                          -------    ----------
# CommandLine                    String    {ID, In, MappingStrings}
# CurrentDirectory               String    {ID, In, MappingStrings}
# ProcessStartupInformation    Instance    {EmbeddedInstance, ID, In, MappingStrings}
# ProcessId                      UInt32    {ID, MappingStrings, Out}
