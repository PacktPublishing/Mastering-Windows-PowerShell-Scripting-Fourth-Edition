$start = (Get-Date).Date.AddDays(-7)
$end = (Get-Date).Date

Get-ChildItem -File | Where-Object {
    $_.LastWriteTime -gt $start -and
    $_.LastWriteTime -le $end
}
