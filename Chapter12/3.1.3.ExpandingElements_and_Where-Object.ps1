[Xml]$xml = @"
<?xml version="1.0"?>
<cars>
    <car type="Saloon">
        <colour>Green</colour>
    </car>
    <car type="Saloon">
        <colour>Blue</colour>
    </car>
</cars>
"@
$xml.cars.car | Where-Object type -eq 'Saloon'
