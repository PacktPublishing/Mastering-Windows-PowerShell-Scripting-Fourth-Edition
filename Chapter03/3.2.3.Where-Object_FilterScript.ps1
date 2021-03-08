Get-Service | Where-Object {
    $_.StartType -eq 'Manual' -and
    $_.Status -eq 'Running'
}
