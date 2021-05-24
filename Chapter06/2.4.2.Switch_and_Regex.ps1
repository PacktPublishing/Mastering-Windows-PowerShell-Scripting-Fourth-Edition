switch -Regex ('cat') {
    '^c'         { Write-Host 'The word begins with c' }
    '^[a-z]{3}$' { Write-Host 'The word is 3 characters long' }
    't$'         { Write-Host 'The word ends with t' }
}
