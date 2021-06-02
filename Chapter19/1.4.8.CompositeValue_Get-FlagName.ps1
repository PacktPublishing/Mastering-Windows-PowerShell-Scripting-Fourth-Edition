# Requires 1.4.7

using namespace System.Security.AccessControl
Get-FlagName -Value ([FileSystemRights]::ReadAndExecute)

# Expects output:
#
#                   Name Integer Hexadecimal BitPosition
#                   ---- ------- ----------- -----------
#               ReadData       1 0x00000001            1
# ReadExtendedAttributes       8 0x00000008            4
#            ExecuteFile      32 0x00000020            6
#         ReadAttributes     128 0x00000080            8
#        ReadPermissions  131072 0x00020000           18
