$array = @(
    'Anna'
    'Ben'
    'Chris'
    'David'
)
if ($array -notmatch '^[ab]') {
    Write-Host "No names starting A or B"
}
