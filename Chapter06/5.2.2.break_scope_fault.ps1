foreach ($value in 1..10) {
    Write-Verbose "Working on $value" -Verbose
    if ($value -gt 5) {
        if (Test-Value $value) {
            Write-Host "$value is OK"
        }
    }
}
