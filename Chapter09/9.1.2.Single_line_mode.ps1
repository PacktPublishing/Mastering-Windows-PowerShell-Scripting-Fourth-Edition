"First line`nSecond line" -match '(?s).+'

# Expects output:
#
# True

$matches

# Expects output:
#
# First line
# Second line
