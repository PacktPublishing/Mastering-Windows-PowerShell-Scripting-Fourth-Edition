(Get-CimClass Win32_Share).CimClassMethods['Create'].Parameters | Where-Object Name -eq Type

# Expects:
#
# Name CimType Qualifiers ReferenceClassName
# ---- ------- ---------- ------------------
# Type UInt32 {ID, In, MappingStrings}