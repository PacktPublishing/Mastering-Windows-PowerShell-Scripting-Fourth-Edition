# Class content from 4.4.1 must be placed in LocalMachine.psm1

$modulePath = 'C:\Program Files\WindowsPowerShell\Modules'

$newItemParams = @{
    Path     = Join-Path $modulePath 'LocalMachine\1.0.0\LocalMachine.psm1'
    ItemType = 'File'
    Force    = $true
}
New-Item @newItemParams

$joinPathParams = @{
    Path      = $modulePath
    ChildPath = 'LocalMachine\1.0.0\LocalMachine.psd1'
}
$newModuleManifestParams = @{
    Path                 = Join-Path @joinPathParams
    RootModule           = 'LocalMachine.psm1'
    DscResourcesToExport = 'ComputerDescription'
}
New-ModuleManifest @newModuleManifestParams
