foreach ($value in -536805376, 268435456) {
    '{0,-10}: {1}' -f @(
        $value
        [Convert]::ToString($value, 2).PadLeft(32, '0')
    )
}
