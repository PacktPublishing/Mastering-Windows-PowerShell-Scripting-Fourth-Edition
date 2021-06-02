$object = [PSCustomObject]@{ Property = 'Value' }

# Add to the end of the existing list
$object.PSTypeNames.Add('SomeTypeName')


# Or add to the beginning of the list
$object.PSTypeNames.Insert(0, 'SomeTypeName')
