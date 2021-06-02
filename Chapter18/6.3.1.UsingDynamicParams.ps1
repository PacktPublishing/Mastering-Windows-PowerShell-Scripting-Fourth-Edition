using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam {
        $parameters = [RuntimeDefinedParameterDictionary]::new()

        $parameter = [RuntimeDefinedParameter]::new(
            'Action',
            [String],
            [Attribute[]]@(
                [Parameter]@{ Mandatory = $true; Position = 1 }
                [ValidateSet]::new(
                    'Start',
                    'Stop',
                    'Create',
                    'Delete'
                )
            )
        )
        $parameters.Add($parameter.Name, $parameter)

        $parameters
    }

    end {
        Write-Host $PSBoundParameters['Action']
    }
}
