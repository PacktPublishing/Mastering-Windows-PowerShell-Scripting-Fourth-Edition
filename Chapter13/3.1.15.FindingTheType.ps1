$searchCondition = ($service.GetType().Module.GetTypes() |
    Where-Object Name -eq 'SearchCondition')::new()

$searchCondition.PropertyName = 'Symbol'
$searchCondition.Operator = 'eq'
$searchCondition.Value = 'H'

$searchConditions = @($searchCondition)

$service.SearchElements($searchConditions)