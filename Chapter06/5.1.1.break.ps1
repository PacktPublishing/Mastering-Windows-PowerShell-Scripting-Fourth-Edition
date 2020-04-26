for ($i = 0; $i -lt 20; $i += 2) {
    Write-Host $i
    if ($i -eq 10) {
        break    # Stop this loop
    }
}
