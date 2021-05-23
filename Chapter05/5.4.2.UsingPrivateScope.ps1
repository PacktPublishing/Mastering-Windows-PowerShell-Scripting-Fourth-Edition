function first {
    $name = 'first'
    second
}
function second {
    $private:name = 'second'
    third
}
function third {
    "The value of name is $name"
}
first

# Expects output:
#
# The value of name is first
