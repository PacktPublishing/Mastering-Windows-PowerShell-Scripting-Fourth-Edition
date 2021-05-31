(Get-CimClass Win32_Share).CimClassMethods['Create'].Parameters |
    Where-Object Name -eq Type

# Expects output:
#
# Name     CimType     Qualifiers               ReferenceClassName
# ----     -------     ----------               ------------------
# Type     UInt32     {ID, In, MappingStrings}
