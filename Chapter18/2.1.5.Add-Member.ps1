$object = [PSCustomObject]@{ Property = 'Value' }
$object | Add-Member -TypeName 'SomeTypeName'
