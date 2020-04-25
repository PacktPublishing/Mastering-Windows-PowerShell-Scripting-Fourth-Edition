$attribute = (Get-Variable thisString).Attributes |
    Where-Object TypeId -match 'ArgumentTypeConverterAttribute'
$attribute.GetType().
    GetProperties('Instance,NonPublic').
    GetMethod.Invoke($attribute, @())
