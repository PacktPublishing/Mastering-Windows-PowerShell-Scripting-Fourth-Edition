function Test-StrictMode {
    Set-StrictMode -Version Latest

    $names = 'pwsh', 'powershell'
    foreach ($name in $naems) {
        Write-Host $name
    }
}
