(Get-CimClass Win32_SecurityDescriptorHelper).CimClassMethods

# Expects:
#
# Name                  ReturnType    Parameters                Qualifiers
# ----                  ----------    ----------                ----------
# Win32SDToSDDL             UInt32    {Descriptor, SDDL}        {implemented, static}
# Win32SDToBinarySD         UInt32    {Descriptor, BinarySD}    {implemented, static}
# SDDLToWin32SD             UInt32    {SDDL, Descriptor}        {implemented, static}
# SDDLToBinarySD            UInt32    {SDDL, BinarySD}          {implemented, static}
# BinarySDToWin32SD         UInt32    {BinarySD, Descriptor}    {implemented, static}
# BinarySDToSDDL            UInt32    {BinarySD, SDDL}          {implemented, static}