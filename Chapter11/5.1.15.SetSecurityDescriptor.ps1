$params = @{
    MethodName = 'SetSecurityDescriptor'
    Arguments  = @{
        Descriptor = $aclObject
    }
}
$security | Invoke-CimMethod @params
