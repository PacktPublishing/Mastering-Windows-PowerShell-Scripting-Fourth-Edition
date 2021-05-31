$security = Get-CimInstance __SystemSecurity -Namespace root\cimv2
$return = $security | Invoke-CimMethod -MethodName GetSecurityDescriptor
$aclObject = $return.Descriptor

$params = @{
    ClassName = 'Win32_SecurityDescriptorHelper'
    MethodName = 'Win32SDToSDDL'
    Arguments  = @{
        Descriptor = $aclObject
    }
}
$return = Invoke-CimMethod @params
