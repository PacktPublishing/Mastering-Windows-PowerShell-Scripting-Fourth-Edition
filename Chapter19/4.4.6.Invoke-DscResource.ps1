# Requires 4.4.2

$params = @{
    Name       = 'ComputerDescription'
    ModuleName = 'LocalMachine'
    Method     = 'Test'
    Property   = @{
        Ensure      = 'Present'
        Description = 'Some description'
    }
    Verbose    = $true
}
Invoke-DscResource @params
