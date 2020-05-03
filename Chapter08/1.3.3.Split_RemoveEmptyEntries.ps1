$string = 'Surname,,GivenName'
$array = $string.Split(
    ',',
    [StringSplitOptions]::RemoveEmptyEntries
)
$array.Count    # This is 2
