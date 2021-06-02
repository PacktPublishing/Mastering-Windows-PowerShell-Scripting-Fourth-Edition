using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam {
        $parameters = [RuntimeDefinedParameterDictionary]::new()

        $parameter = [RuntimeDefinedParameter]::new(
            'InputObject',
            [String],
            [Attribute[]]@(
                [Parameter]@{
                    Mandatory         = $true
                    ValueFromPipeline = $true
                }
            )
        )
        $parameters.Add($parameter.Name, $parameter)

        $parameters
    }

    begin {
        'BEGIN: Input object is present: {0}' -f @(
            $PSBoundParameters.ContainsKey('InputObject')
        )
    }

    process {
        'PROCESS: Input object is present: {0}; Value: {1}' -f @(
            $PSBoundParameters.ContainsKey('InputObject')
            $PSBoundParameters['InputObject']
        )
    }

    end {
        'END: Input object is present: {0}; Value: {1}' -f @(
            $psboundparameters.ContainsKey('InputObject')
            $psboundparameters['InputObject']
        )
    }
}
