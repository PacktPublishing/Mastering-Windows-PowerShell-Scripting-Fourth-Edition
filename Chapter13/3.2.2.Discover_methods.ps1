# Expects 3.1.1 to have been run.

$xmlNamespaceManager = [System.Xml.XmlNamespaceManager]::new($wsdl.NameTable)
# Load everything that looks like a namespace
$wsdl.definitions.PSObject.Properties |
    Where-Object Value -match '^http' |
    ForEach-Object {
        $xmlNamespaceManager.AddNamespace(
            $_.Name,
            $_.Value
        )
    }

$wsdl.SelectNodes(
    '/*/wsdl:binding[@name="ServiceSoap12"]/wsdl:operation',
    $xmlNamespaceManager
).ForEach{
    [PSCustomObject]@{
        Name       = $_.name
        Inputs     = $wsdl.SelectNodes(
            ('//s:element[@name="{0}"]/*/s:sequence/*' -f $_.name),
            $xmlNamespaceManager
        ).ForEach{
            [PSCustomObject]@{
                ParameterName = $_.name
                ParameterType = $_.type -replace '.+:'
            }
        }
        Outputs    = $wsdl.SelectNodes(
            ('//s:element[@name="{0}Response"]/*/*/s:element/@type' -f
                $_.name),
            $xmlNamespaceManager
        ).'#text' -replace '.+:'
        SoapAction = $_.operation.soapAction
    }
}
