function first {
    $first = $name = 'first'
    second
}
function second {
    $second = $name = 'second'
    third
}
function third {
    "The value of name in first is {0}" -f @(
        Get-Variable -Name name -Scope 2 -ValueOnly
    )
    "The value of name in second is {0}" -f @(
        Get-Variable -Name name -Scope 1 -ValueOnly
    )
}
first

# Expects output:
#
# The value of name in first is first
# The value of name in second is second
