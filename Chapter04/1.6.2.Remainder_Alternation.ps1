1..20 | ForEach-Object {
    if ($_ % 2 -eq 0) {
        $foregroundColor = 'Cyan'
    } else {
        $foregroundColor = 'White'
    }
    Write-Host $_ -ForegroundColor $foregroundColor
}

# Expects alternating rows in Cyan and White
