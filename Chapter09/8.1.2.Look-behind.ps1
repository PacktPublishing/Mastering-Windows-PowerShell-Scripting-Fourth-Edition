'This value is before this string' -match '(?<=This value is before )this string'

# Expects output:
#
# True

$matches[0]

# Expects output:
#
# this string
