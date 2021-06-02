function Show-Property {
    [CmdletBinding()]
    param (
        # Show the properties of the specified object.
        [Parameter(Mandatory)]
        [PSObject]$InputObject,

        # The maximum depth when expanding properties
        # of child objects.
        [Int32]$MaxDepth = 5,

        # Used to track the current depth during recursion.
        [Parameter(DontShow)]
        [Int32]$CurrentDepth = 0
    )

    $width = $InputObject.PSObject.Properties.Name |
        Sort-Object { $_.Length } -Descending |
        Select-Object -First 1 -ExpandProperty Length

    foreach ($property in $InputObject.PSObject.Properties) {
        '{0}{1}: {2}' -f @(
            ' ' * $CurrentDepth
            $property.Name.PadRight($width, ' ')
            $property.TypeNameOfValue
        )

        if ($CurrentDepth -lt $MaxDepth -and
            $property.Value -and
            -not $property.TypeNameOfValue.IsPrimitive) {

            $params = @{
                InputObject = $property.Value
                CurrentDepth = $CurrentDepth + 1
            }
            Show-Property @params
        }
    }
}
