# SimpleSOAP must be running via Visual Studio.

$params = @{
    Uri         = 'http://localhost:62369/Service.asmx'
    ContentType = 'text/xml'
    Method      = 'POST'
    Header      = @{
        SOAPAction = 'http://tempuri.org/GetElements'
    }
    Body        = '
        <soapenv:Envelope
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <GetElements />
            </soapenv:Body>
        </soapenv:Envelope>
    '
}
$webResponse = Invoke-WebRequest @params
$xmlResponse = [Xml]$webResponse.Content
$body = $xmlResponse.Envelope.Body
$body.GetElementsResponse.GetElementsResult.Element
