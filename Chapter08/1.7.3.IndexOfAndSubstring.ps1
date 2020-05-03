$string = 'First,Second,Third'
$string.Substring(
    $string.IndexOf(',') + 1,                           # startIndex (6)
    $string.LastIndexOf(',') - $string.IndexOf(',') - 1 # length (6)
)

# Expects output:
#
# Second