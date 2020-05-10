# Get the ACE to copy 
$ace = (Get-Acl C:\Temp\ACL\3).Access | Where-Object {
    $_.IdentityReference -like '*\Authenticated Users' -and 
    $_.FileSystemRights -eq 'Modify, Synchronize' -and 
     -not $_.IsInherited 
}

# Get the target ACL 
$acl = Get-Acl C:\Temp\ACL\5 

# Add the entry 
$acl.AddAccessRule($ace) 

# Apply the change 
Set-Acl C:\Temp\ACL\5 -AclObject $acl 