# Windows PowerShell only.
# SimpleSOAP must be running via Visual Studio.

$params = @{
    Uri       = 'http://localhost:62369/Service.asmx'
    Namespace = 'SOAP'
}
$service = New-WebServiceProxy @params
