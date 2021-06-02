@'
class ModuleClass {
    [string] $Property = 'value'
}
function Get-Something {
    [ModuleClass]::new()
}
'@ | Set-Content -Path ModuleWithClass.psm1
