[string]$variable = 'value'
$typeConverter = (Get-Variable variable).Attributes[0]
$typeConverterType = $typeConverter.GetType()
