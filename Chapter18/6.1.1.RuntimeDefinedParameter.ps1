using namespace System.Management.Automation

$parameter = [RuntimeDefinedParameter]::new(
    'Action',
    [String],
    [Attribute[]]@(
        [Parameter]@{ Mandatory = $true; Position = 1 }
        [ValidateSet]::new('Start', 'Stop', 'Create', 'Delete')
    )
)
