$path = 'C:\Temp\WmiPermissions'
New-Item $path -ItemType Directory

$params = @{
    ClassName = 'Win32_Share'
    MethodName = 'Create'
    Arguments = @{
        Name = 'WmiPerms'
        Path = $path
        Type = [UInt32]0
    }
}
Invoke-CimMethod @params
