$array = 1..5
$i = 0
do {
    # $i is incremented before use, 2 will be the first printed.
    Write-Host $array[++$i]
} while ($i -lt $array.Count - 1)
