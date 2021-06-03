try {
    1/0
} catch {
    Write-Host $_.Exception.Message
}
