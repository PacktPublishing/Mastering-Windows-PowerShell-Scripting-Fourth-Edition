$xDocument = [System.Xml.Linq.XDocument]::Load("$pwd\cars.xml")
$xDocument.Descendants('car').
    Where( { $_.Element('colour').Value -eq 'Green' } ).
    Element('engine')