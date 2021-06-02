# Parameters used to authenticate remote connections
$remoteParams = @{
    Credential   = Get-Credential
    ComputerName = $env:COMPUTERNAME
}
# Parameters which are specific to Test-WSMan
$testWSMan = @{
    Authentication = 'Default'
    ErrorAction    = 'SilentlyContinue'
}
# By default, do not pass any extra parameters to New-CimSession
$newCimSession = @{}
if (-not (Test-WSMan @testWSMan @remoteParams)) {
    # If WSMan fails, use DCOM (RPC over TCP) to connect
    $newCimSession['SessionOption'] = New-CimSessionOption -Protocol Dcom
}
# Parameters to pass to Get-CimInstance
$getCimInstance = @{
    ClassName  = 'Win32_Service'
    CimSession = New-CimSession @newCimSession @remoteParams
}
Get-CimInstance @getCimInstance
