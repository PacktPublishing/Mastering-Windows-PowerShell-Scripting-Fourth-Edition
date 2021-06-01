# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$searchConditions = @(
    [SOAP.SearchCondition]@{
        PropertyName = 'AtomicNumber'
        Operator     = 'ge'
        Value        = 1
    }
    [SOAP.SearchCondition]@{
        PropertyName = 'AtomicNumber'
        Operator     = 'lt'
        Value        = 6
    }
)
$service.SearchElements($searchConditions)
