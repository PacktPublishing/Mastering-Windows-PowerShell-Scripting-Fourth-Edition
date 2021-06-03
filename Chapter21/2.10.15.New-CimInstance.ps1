$params = @{
    ClassName  = 'MSFT_NetAdapter'
    Namespace  = 'ROOT/StandardCimv2'
    ClientOnly = $true
}
New-CimInstance @params
