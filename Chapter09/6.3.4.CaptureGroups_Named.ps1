'first second third' -match '(?<One>first) (?<Two>second) (?<Three>third)'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name    Value
# ----    -----
# One     first
# Three   third
# Two     second
# 0       first second third