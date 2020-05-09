$values = @(
    'C:\Temp'
    'domain.net'
) | ForEach-Object { [Regex]::Escape($_) }
$regex = $values -join '|'
