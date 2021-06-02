$private = 'GetRegistryParameter'

foreach ($item in $private) {
    . '{0}\private\{1}.ps1' -f $PSScriptRoot, $item
}

$public = @(
    'Get-ComputerDescription'
)

foreach ($item in $public) {
    . '{0}\public\{1}.ps1' -f $PSScriptRoot, $item
}
Export-ModuleMember -Function $public
