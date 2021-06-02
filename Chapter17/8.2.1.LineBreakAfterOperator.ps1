Get-Service | Where-Object {
    $_.Status -eq 'Running' -and
    $_.StartType -eq 'Manual'
}
