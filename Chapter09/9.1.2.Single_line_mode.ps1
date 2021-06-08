"First line`nSecond line" -match '(?s).+'

# Expects output:
#
# True

$matches[0]

# Expects output:
#
# First line
# Second line
