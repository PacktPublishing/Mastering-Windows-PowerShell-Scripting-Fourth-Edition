'first second third' -replace
    '(?<One>first) (?<Two>second) (?<Three>third)',
    '${Three}, ${Two}, ${One}'

# Expects output:
#
# third, second, first
