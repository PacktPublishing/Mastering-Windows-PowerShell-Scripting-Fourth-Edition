function Stop-Command {
    Write-Host 'First'
    throw 'Error'
    Write-Host 'Second'
}
