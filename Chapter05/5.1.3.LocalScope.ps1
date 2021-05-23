function Write-VariableValue {
    $local = 'value from inside the function'
    $parent = 'a new value for parent'
    Write-Host "Local: $local"
    Write-Host "Parent: $parent"
}
$parent = 'value from parent scope'
