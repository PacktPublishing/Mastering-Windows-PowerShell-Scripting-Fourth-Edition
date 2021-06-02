using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, Position = 1)]
        [ValidateSet('Service', 'Process')]
        [String]$Type,

        [Parameter(Mandatory, Position = 3)]
        [String]$Name
    )

    dynamicparam {
        $parameters = [RuntimeDefinedParameterDictionary]::new()

        [String[]]$validValues = switch ($Type) {
            'Service' { 'Get', 'Start', 'Stop', 'Restart' }
            'Process' { 'Get', 'Kill' }
        }
        $parameter = [RuntimeDefinedParameter]::new(
            'Action',
            [String],
            [Attribute[]]@(
                [Parameter]@{ Mandatory = $true; Position = 2 }
                [ValidateSet]::new($validValues)
            )
        )
        $parameters.Add($parameter.Name, $parameter)

        $parameters
    }
}
