'first second third' -match '(first) ((second) (third))'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name Value
# ---- -----
# 4    third
# 3    second
# 2    second third
# 1    first
# 0    first second third