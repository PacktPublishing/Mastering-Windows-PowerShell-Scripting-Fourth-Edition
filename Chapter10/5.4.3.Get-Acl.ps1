Get-Acl 2 |
    Select-Object -ExpandProperty Access | 
    Select-Object FileSystemRights, IdentityReference, IsInherited