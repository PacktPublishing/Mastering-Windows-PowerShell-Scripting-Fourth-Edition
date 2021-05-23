function first {
    $first = $name = 'first'
    second
}
function second {
    $second = $name = 'second'
    third
}
function third {
    "The value of first is $first"
}
first

# Expects output:
#
# The value of first is first
