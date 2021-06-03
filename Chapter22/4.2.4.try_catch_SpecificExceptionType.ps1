try {
    throw [ArgumentException]::new('Invalid argument')
} catch [ArgumentException] {
    Write-Host 'Caught an argument exception'
}
