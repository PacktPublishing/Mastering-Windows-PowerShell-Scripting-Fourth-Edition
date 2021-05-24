$Value = 5
switch ($Value) {
    { $_ -is [Int] } { Write-Host 'This is a Int32 type' }
    5                { Write-Host 'The value is five' }
}
