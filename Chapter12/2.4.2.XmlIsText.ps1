$xml = Get-Process -Id $pid | ConvertTo-Xml
$property = $xml.Objects.Object.Property |
    Where-Object Name -eq WorkingSet
$property.'#text'.GetType()
