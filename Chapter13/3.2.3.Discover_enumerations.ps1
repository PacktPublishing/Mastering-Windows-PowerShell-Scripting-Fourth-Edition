# Expects 3.1.2 to have been run.

$wsdl.SelectNodes(
    '/*/*/*/s:simpleType[s:restriction/s:enumeration]',
    $xmlNamespaceManager
).ForEach{
    [PSCustomObject]@{
        Name   = $_.name
        Values = $_.restriction.enumeration.value
    }
}
