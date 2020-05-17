using namespace System.Xml.Linq

[XDocument]$xDocument = @"
<?xml version="1.0"?>
<cars xmlns:c="http://example/cars">
    <car type="Saloon">
        <c:colour>Green</c:colour>
        <c:doors>4</c:doors>
        <c:transmission>Automatic</c:transmission>
        <c:engine>
            <size>2.0</size>
            <cylinders>4</cylinders>
        </c:engine>
    </car>
</cars>
"@

$xNScars = [XNameSpace]'http://example/cars'
$xDocument.Descendants('car').ForEach( {
    $_.Element($xNScars + 'engine')
} )