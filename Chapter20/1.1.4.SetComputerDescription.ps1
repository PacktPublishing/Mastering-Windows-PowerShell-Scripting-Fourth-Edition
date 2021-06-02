# Requires run as administrator

$params = @{
    Path  = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
    Name  = 'srvcomment'
    Value = 'Computer description'
}
New-ItemProperty @params
