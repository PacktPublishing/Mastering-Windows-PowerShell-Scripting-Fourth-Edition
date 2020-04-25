$array = @()
foreach ($value in 1..5) {
    $array += [PSCustomObject]@{
        Value = $value
    }
}
