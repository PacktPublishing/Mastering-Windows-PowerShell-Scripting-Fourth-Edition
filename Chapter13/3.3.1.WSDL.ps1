# SimpleSOAP must be running via Visual Studio.

$params = @{
    Uri = 'http://localhost:62369/Service.asmx?wsdl'
}
[Xml]$wsdl = Invoke-WebRequest @params | Select-Object -ExpandProperty Content
