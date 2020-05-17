[XDocument]$xDocument = @"
<?xml version="1.0"?>
<list type='numbers'>
    <name>1</name>
</list>
"@
$xDocument.Element('list').
    Element('name').
    AddAfterSelf(@(
        [XElement]::new('name', 2),
        [XElement]::new('name', 3),
        [XElement]::new('name', 4)
    ))