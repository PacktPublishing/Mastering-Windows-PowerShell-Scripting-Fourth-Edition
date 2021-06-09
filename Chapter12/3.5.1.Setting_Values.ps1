[Xml]$xml = @"
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
($xml.items.item | Where-Object name -eq 'Fridge').category = 'Appliances'
