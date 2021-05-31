[XDocument]$xDocument = @"
<?xml version="1.0"?>
<list name='letters'>
    <name>1</name>
</list>
"@
$xDocument.Element('list').Attribute('name').Value = 'numbers'
