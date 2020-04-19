$object = [PSCustomObject]@{ 'Some Name' = 'Value' }
$propertyName = 'Some Name'
$object.$propertyName

# Expects:
#
# Value