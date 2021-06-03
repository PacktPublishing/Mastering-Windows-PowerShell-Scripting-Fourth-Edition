$object = [PSCustomObject]@{
    ValueA = 1
}
if ($object.ValueB) {
    Write-Host "ValueB is set"
}
