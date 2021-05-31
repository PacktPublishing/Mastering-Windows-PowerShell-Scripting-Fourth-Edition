Get-Acl 2 |
    Select-Object -ExpandProperty Access |
    Select-Object FileSystemRights, IdentityReference, IsInherited

# Expects output similar to:
#
# FileSystemRights             IdentityReference                 IsInherited
# ----------------             -----------------                 -----------
# -536805376                   NT AUTHORITY\Authenticated Users  False
# Modify, Synchronize          NT AUTHORITY\Authenticated Users  False
# FullControl                  NT AUTHORITY\SYSTEM               False
# 268435456                    NT AUTHORITY\SYSTEM               False
# 268435456                    BUILTIN\Administrators            False
# FullControl                  BUILTIN\Administrators            False
# ReadAndExecute, Synchronize  BUILTIN\Users                     False
# FullControl                  BUILTIN\Administrators            True
# 268435456                    BUILTIN\Administrators            True
# FullControl                  NT AUTHORITY\SYSTEM               True
# 268435456                    NT AUTHORITY\SYSTEM               True
# ReadAndExecute, Synchronize  BUILTIN\Users                     True
# Modify, Synchronize          NT AUTHORITY\Authenticated Users  True
# -536805376                   NT AUTHORITY\Authenticated Users  True
