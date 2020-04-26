switch -Wildcard ('cat') {
    'c*'  { Write-Host 'The word begins with c' }
    '???' { Write-Host 'The word is 3 characters long' }
    '*t'  { Write-Host 'The word ends with t' }
}
