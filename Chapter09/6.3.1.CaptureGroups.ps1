'first second third' -match '(first) (second) (third)'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name Value
# ---- -----
# 3    third
# 2    second
# 1    first
# 0    first second third