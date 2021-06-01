# SimpleSOAP must be running via Visual Studio.

$params = @{
    Uri         = 'http://localhost:62369/Service.asmx'
    ContentType = 'text/xml'
    Method      = 'POST'
    Body        = '
        <soapenv:Envelope
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns="http://tempuri.org/">
            <soapenv:Body>
                <SearchElements>
                    <searchConditions>
                        <SearchCondition>
                            <PropertyName>AtomicNumber</PropertyName>
                            <Value>1</Value>
                            <Operator>ge</Operator>
                        </SearchCondition>
                        <SearchCondition>
                            <PropertyName>AtomicNumber</PropertyName>
                            <Value>6</Value>
                            <Operator>lt</Operator>
                        </SearchCondition>
                    </searchConditions>
                </SearchElements>
            </soapenv:Body>
        </soapenv:Envelope>
    '
}
$webResponse = Invoke-WebRequest @params
$xmlResponse = [Xml]$webResponse.Content
$body = $xmlResponse.Envelope.Body
$body.SearchElementsResponse.SearchElementsResult.Element
