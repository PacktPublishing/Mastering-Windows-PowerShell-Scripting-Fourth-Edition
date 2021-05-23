function Write-VariableValue {
    $local = 'value from inside the function'
    Write-Host "Local: $local"
    Write-Host "Parent: $parent"
}
$parent = 'value from parent scope'
