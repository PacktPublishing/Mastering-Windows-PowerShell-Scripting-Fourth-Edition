[XDocument]$xDocument = @"
<?xml version="1.0"?>
<items>
    <item name='Fridge'>
        <category>Appliances</category>
    </item>
    <item name='Cooker'>
        <category>Appliances</category>
    </item>
</items>
"@

$xDocument.Element('items').
    Elements('item').
    Where( { $_.Attribute('name').Value -eq 'Fridge' } ).
    ForEach( { $_.Element('category').Value = 'Appliances' } )
