$acl = Get-Acl C:\Temp\ACL\3
$acl.Access |
    Select-Object IdentityReference, FileSystemRights, IsInherited

# Expects output similar to:
#
# IdentityReference                          FileSystemRights IsInherited
# -----------------                          ---------------- -----------
# NT AUTHORITY\Authenticated Users                 -536805376       False
# NT AUTHORITY\Authenticated Users        Modify, Synchronize       False
# NT AUTHORITY\SYSTEM                             FullControl       False
# NT AUTHORITY\SYSTEM                               268435456       False
# BUILTIN\Administrators                            268435456       False
# BUILTIN\Administrators                          FullControl       False
# BUILTIN\Users                   ReadAndExecute, Synchronize       False
# BUILTIN\Administrators                          FullControl        True
# BUILTIN\Administrators                            268435456        True
# NT AUTHORITY\SYSTEM                             FullControl        True
# NT AUTHORITY\SYSTEM                               268435456        True
# BUILTIN\Users                   ReadAndExecute, Synchronize        True
# NT AUTHORITY\Authenticated Users        Modify, Synchronize        True
# NT AUTHORITY\Authenticated Users                 -536805376        True
