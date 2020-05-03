$string = 'Surname,,GivenName'
$surname, $givenName = $string.Split(
    ',',
    [StringSplitOptions]::RemoveEmptyEntries
)
