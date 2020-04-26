switch (Get-Date) {
    { $_ -is [DateTime] } { Write-Host 'This is a DateTime type' }
    { $_.Year -ge 2017 }  { Write-Host 'It is 2017 or later' }
}
