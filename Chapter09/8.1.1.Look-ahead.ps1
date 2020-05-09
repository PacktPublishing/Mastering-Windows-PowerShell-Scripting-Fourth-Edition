'This string is followed by' -match 'This string(?= is followed by)'

# Expects output:
#
# True

$matches[0]

# Expects output:
#
# This string
