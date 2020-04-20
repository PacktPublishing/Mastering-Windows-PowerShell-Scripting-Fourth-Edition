1..100 | Where-Object {$_ % 5 -eq 0 } | ForEach-Object {
    Write-Host $_
}