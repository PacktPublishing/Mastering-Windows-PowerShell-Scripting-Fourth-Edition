# Windows PowerShell only.
# Requires 3.2.15
# SimpleSOAP must be running via Visual Studio.

$searchCondition = ($service.GetType().Module.GetTypes() |
    Where-Object Name -eq 'SearchCondition')::new()

$searchCondition.PropertyName = 'Symbol'
$searchCondition.Operator = 'eq'
$searchCondition.Value = 'H'

$searchConditions = @($searchCondition)

$service.SearchElements($searchConditions)
