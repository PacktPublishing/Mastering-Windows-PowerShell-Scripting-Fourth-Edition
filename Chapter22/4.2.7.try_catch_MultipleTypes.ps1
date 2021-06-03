try {
    throw [ArgumentException]::new('Invalid argument')
} catch [InvalidOperationException], [ArgumentException] {
    Write-Host 'Argument or InvalidOperation exception'
}
