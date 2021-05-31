$ace = [System.Security.AccessControl.FileSystemAccessRule]::new( 
    'DOMAIN\User',                      # Identity reference 
    'FullControl',                      # FileSystemRights 
    'ContainerInherit, ObjectInherit',  # InheritanceFlags 
    'None',                             # PropagationFlags 
    'Allow'                             # ACE type (allow or deny) 
) 