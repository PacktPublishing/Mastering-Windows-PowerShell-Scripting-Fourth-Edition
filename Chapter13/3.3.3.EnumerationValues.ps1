# SimpleSOAP must be running via Visual Studio.
# Requires 3.3.1

$wsdl.SelectNodes(
    '/*/*/*/s:simpleType[s:restriction/s:enumeration]',
    $xmlNamespaceManager
).ForEach{
    [PSCustomObject]@{
        Name   = $_.name
        Values = $_.restriction.enumeration.value
    }
}
