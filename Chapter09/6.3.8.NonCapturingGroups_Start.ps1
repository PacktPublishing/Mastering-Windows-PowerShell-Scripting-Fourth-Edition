'first second third' -match '(?<One>first) (?<Two>second) (?:third)'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name Value
# ---- -----
# Two  second
# One  first
# 0    first second third