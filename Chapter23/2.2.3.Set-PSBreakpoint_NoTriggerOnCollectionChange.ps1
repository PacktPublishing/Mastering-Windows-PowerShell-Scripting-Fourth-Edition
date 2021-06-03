Set-PSBreakpoint -Variable values
$values = @{}
foreach ($value in 1..5) {
    $values[$value] = $value
}

# Expects debugging to trigger on line 2 only
