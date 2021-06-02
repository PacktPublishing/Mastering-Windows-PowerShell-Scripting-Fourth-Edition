New-Module ModuleWithEnum {
    enum ParameterValues {
        ValueOne
        ValueTwo
    }

    function Get-Something {
        [CmdletBinding()]
        param (
            [ParameterValues]$Parameter
        )
    }
} | Import-Module

Get-Something -Parameter ValueOne
