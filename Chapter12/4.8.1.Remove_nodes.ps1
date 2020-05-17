[XDocument]$xDocument = @"
<?xml version="1.0"?>
<list type='numbers'>
    <name>1</name>
    <name>2</name>
    <name>3</name>
</list>
"@
$xDocument.Element('list').FirstNode.Remove()