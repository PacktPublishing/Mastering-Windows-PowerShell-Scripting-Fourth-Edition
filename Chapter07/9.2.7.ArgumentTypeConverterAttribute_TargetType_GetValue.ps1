[string]$variable = 'value'
$typeConverter = (Get-Variable variable).Attributes[0]
$typeConverterType = $typeConverter.GetType()
$targetTypeProperty = $typeConverterType.GetProperty(
    'TargetType',
    [System.Reflection.BindingFlags]'Instance,NonPublic'
)
$targetTypeProperty.GetValue($typeConverter)
