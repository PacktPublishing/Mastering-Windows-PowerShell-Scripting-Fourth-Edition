& {
    Write-Host 'Statement1'
    throw 'Statement2'
    Write-Host 'Statement3'

    trap {
        Write-Host 'An error occurred'
        continue
    }
}
