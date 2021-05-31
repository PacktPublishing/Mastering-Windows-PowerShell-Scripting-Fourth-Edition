$namespaceManager = [System.Xml.XmlNamespaceManager]::new(
    $xml.NameTable
)
$namespaceManager.AddNamespace('c', 'http://example/cars')
$xml.SelectNodes(
    '//car[c:colour="Green"]/c:engine',
    $namespaceManager
)
