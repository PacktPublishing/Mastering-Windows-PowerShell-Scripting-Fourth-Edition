using namespace System.Management.Automation
$parameter = [RuntimeDefinedParameter]::new(
    'Action',
    [String],
    [Attribute[]]@(
        [Parameter]@{
            Mandatory        = $true
            Position         = 1
            ParameterSetName = 'First'
        }
        [Parameter]@{
            ParameterSetName = 'Second'
        }
    )
)
