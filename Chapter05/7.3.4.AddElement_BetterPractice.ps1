$array = foreach ($value in 1..5) {
    [PSCustomObject]@{
        Value = $value
    }
}
