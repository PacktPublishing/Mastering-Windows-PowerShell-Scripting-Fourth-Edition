'Name (first or full): Bob' -match '^[a-z]+.*(?-i)([A-Z].+)$'

# Expects output:
#
# True

$matches[1]

# Expects output:
#
# Bob
