$properties = [Ordered]@{}
$string -split '\n' | Where-Object {
    $_ -match '^(?<Key>[^:]+): (?<Value>.+)$'
} | ForEach-Object {
    $properties[$matches['Key']] = $matches['Value']
}
[PSCustomObject]$properties
