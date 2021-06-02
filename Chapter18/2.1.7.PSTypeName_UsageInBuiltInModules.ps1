$command = Get-Command Set-NetAdapter
$command.Parameters['InputObject'].Attributes |
    Where-Object  TypeId -eq ([PSTypeNameAttribute])
