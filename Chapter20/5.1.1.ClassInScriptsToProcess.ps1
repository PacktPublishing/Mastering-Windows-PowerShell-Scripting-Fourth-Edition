@'
class ModuleClass {
    [string] $Property = 'value'
}
'@ | Set-Content -Path 'Script.ps1'

@'
function Get-Something {
    [ModuleClass]::new()
}
'@ | Set-Content -Path Module.psm1

$manifestParams = @{
    Path             = 'Module.psd1'
    RootModule       = 'Module.psm1'
    ScriptsToProcess = 'Script.ps1'
}
New-ModuleManifest @manifestParams
