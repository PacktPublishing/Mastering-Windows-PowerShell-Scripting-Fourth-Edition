[Regex]::Matches(
    $string,
    '^(?<Key>[^:]+): (?<Value>.+)$',
    'Multiline, IgnoreCase'
)
