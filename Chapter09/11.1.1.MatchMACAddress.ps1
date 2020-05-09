$patterns = '^([0-9a-f]{2}[-:]){5}[0-9a-f]{2}$',
            '^(([0-9a-f]{2}[-:]?){2}[-:.]){2}([0-9a-f]{2}[-:]?){2}$',
            '^([0-9a-f]{2}[-:]){5}[0-9a-f]{2}|([0-9a-f]{4}\.){2}[0-9af]{4}$'

$strings = '1a-2b-3c-4d-5f-6d',
           '1a:2b:3c:4d:5f:6d',
           '1c2b.3c4d.5f6d'

foreach ($pattern in $patterns) {
    Write-Host "Testing pattern: $pattern" -ForegroundColor Cyan

    foreach ($string in $strings) {
        if ($string -match $pattern) {
            Write-Host "${string}: Matches" -ForegroundColor Green
        } else {
            Write-Host "${string}: Failed" -ForegroundColor Red
        }
    }
}