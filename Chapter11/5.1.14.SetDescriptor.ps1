$security | Invoke-CimMethod -MethodName SetSecurityDescriptor -Arguments @{
    Descriptor = $aclObject
}