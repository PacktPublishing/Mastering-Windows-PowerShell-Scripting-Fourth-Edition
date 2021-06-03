Set-PSBreakpoint -Variable values -Mode Read
$values = @{}
foreach ($value in 1..5) {
    $values[$value] = $value
}

# Expects debugger to trigger on each iteration of the loop
