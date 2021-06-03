$array = @(
    'Anna'
    'Ben'
    'Chris'
    'David'
)
if (-not ($array -match '^[ab]')) {
    Write-Host "No names starting A or B"
}
