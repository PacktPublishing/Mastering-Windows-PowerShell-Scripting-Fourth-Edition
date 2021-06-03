Set-PSBreakpoint -Variable newValue
foreach ($value in 1..5) {
    $newValue = $value
}

# Expects the debugger to trigger with each iteration
