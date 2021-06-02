New-Module ModuleWithClass {
    class ModuleClass {
        [string] $Property = 'value'
    }
    function Get-Something {
        [ModuleClass]::new()
    }
} | Import-Module
