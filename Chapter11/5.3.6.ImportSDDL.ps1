$params = @{
    ClassName = 'Win32_SecurityDescriptorHelper'
    MethodName = 'SDDLToWin32SD'
    Arguments  = @{
        SDDL = 'O:BAG:BAD:AR(A;CI;CCDCWP;;;S-1-5-21-2114566378-1333126016-908539190-1001)(A;CI;CCDCLCSWRPWPRCWD;;;BA)(A;CI;CCDCRP;;;NS)(A;CI;CCDCRP;;;LS)(A;CI;CCDCRP;;;AU)'
    }
}
$return = Invoke-CimMethod @params
$aclObject = $return.Descriptor