$string = 'Surname,,GivenName'
$array = $string.Split(',')
$array.Count    # This is 3
$array[1]       # This is empty