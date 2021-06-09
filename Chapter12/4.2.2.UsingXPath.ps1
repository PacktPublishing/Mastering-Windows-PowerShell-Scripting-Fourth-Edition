# Requires 3.1.0

[System.Xml.XPath.Extensions]::XPathSelectElements(
    $xDocument,
    '//car[colour="Green"]/engine'
)
