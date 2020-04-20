$array = 1..15
$i = 0
while ($i -lt $array.Count) {
    # $i will increment after this statement has completed.
    Write-Host $array[$i++] -ForegroundColor $i
}