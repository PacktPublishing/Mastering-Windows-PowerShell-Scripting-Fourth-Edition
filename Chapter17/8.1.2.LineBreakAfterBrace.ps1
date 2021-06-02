Get-Service | Where-Object Status -eq Running | ForEach-Object {
    # Do work on the service
}
