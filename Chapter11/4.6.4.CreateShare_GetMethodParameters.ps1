$class = [WmiClass]'Win32_Share'
$params = $class.GetMethodParameters('Create')
$params.Name = 'Share1'
$params.Path = 'C:\Temp\Share1'
$params.Type = 0
$class.InvokeMethod('Create', $params)
