using namespace System.Security.AccessControl

$aclObject.DACL | ForEach-Object {
    [PSCustomObject]@{
        Rights   = [FileSystemRights]$_.AccessMask
        Type     = [AceType]$_.AceType
        Flags    = [AceFlags]$_.AceFlags
        Identity = $_.Trustee.Name
    }
}