[Xml]$xml = @"
<?xml version="1.0"?>
    <list name='letters'>
    <name>1</name>
</list>
"@

$xml.SelectSingleNode('/list[@name="letters"]').
    SetAttribute('name', 'numbers')
