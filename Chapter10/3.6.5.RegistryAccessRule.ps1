$ace = [System.Security.AccessControl.RegistryAccessRule]::new( 
    'DOMAIN\User',                      # Identity reference 
    'FullControl',                      # RegistryRights 
    'ContainerInherit, ObjectInherit',  # InheritanceFlags 
    'None',                             # PropagationFlags 
    'Allow'                             # ACE type (allow or deny) 
) 