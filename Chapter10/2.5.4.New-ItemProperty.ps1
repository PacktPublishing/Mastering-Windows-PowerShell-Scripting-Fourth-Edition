$params = @{
    Path         = 'HKCU:\Environment'
    Name         = 'Expand'
    Value        = 'User: %USERNAME%'
    PropertyType = 'ExpandString'
}
New-ItemProperty @params
