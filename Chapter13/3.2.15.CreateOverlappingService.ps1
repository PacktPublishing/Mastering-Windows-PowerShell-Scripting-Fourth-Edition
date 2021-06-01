# Windows PowerShell only.
# SimpleSOAP must be running via Visual Studio.

$params = @{
    Uri = 'http://localhost:62369/Service.asmx'
    Namespace = 'SOAP'
}
# Original version
$service = New-WebServiceProxy @params
# New version
$service = New-WebServiceProxy @params

$searchConditions = @(
    [SOAP.SearchCondition]@{
        PropertyName = 'Symbol'
        Operator     = 'eq'
        Value        = 'H'
    }
)
