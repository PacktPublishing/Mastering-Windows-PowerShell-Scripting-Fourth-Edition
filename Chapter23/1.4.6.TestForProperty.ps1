Set-StrictMode -Version Latest
$object = [PSCustomObject]@{
    ValueA = 1
}
if ($object.PSObject.Properties.Item('ValueB') -and
    $object.ValueB) {

    Write-Host "ValueB is set"
}
