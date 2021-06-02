$params = @{
    Path                 = '.\LocalMachine.psd1'
    Description          = 'Local machine configuration'
    RootModule           = 'LocalMachine.psm1'
    ModuleVersion        = '1.0.0'
    FunctionsToExport    = @(
        'Get-ComputerDescription'
        'Remove-ComputerDescription'
        'Set-ComputerDescription'
    )
    PowerShellVersion    = '5.1'
    CompatiblePSEditions = @(
        'Core'
        'Desktop'
    )
}
New-ModuleManifest @params
