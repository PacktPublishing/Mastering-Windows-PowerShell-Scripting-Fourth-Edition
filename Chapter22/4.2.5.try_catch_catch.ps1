try {
    throw [ArgumentException]::new('Invalid argument')
} catch [InvalidOperationException] {
    Write-Host 'Caught an invalid operation exception'
} catch [ArgumentException] {
    Write-Host 'Caught an argument exception'
}
