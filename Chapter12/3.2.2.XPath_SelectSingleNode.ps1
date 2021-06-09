[Xml]$xml = @"
<?xml version="1.0"?>
<cars>
    <car type="Saloon">
        <numberPlate>abcd</numberPlate>
        <colour>Green</colour>
        <doors>4</doors>
        <transmission>Automatic</transmission>
        <engine>
            <size>2.0</size>
            <cylinders>4</cylinders>
        </engine>
    </car>
</cars>
"@
$xml.SelectSingleNode('//car[numberPlate="abcd"]')
