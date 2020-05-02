$type = [PowerShell].Assembly.GetType('System.Management.Automation.TypeAccelerators')
$type::Add('Accelerators', $type)