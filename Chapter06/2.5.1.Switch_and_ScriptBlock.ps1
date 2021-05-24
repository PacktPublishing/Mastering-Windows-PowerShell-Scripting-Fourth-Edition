switch (Get-Date) {
    { $_ -is [DateTime] } { Write-Host 'This is a DateTime type' }
    { $_.Year -ge 2020 }  { Write-Host 'It is 2020 or later' }
}
