'Group one, Group two' -match 'Group (.*), Group (.*)'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name                        Value
# ----                        ----
# 2                           two
# 1                           one
# 0                           Group one, Group two