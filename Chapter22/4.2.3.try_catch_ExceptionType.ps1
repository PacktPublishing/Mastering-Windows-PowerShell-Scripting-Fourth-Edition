try {
    1/0
} catch [Exception] {
    Write-Host $_.Exception.Message
}
