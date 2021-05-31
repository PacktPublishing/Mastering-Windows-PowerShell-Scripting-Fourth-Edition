$string -match '(?<Key>[^:]+): (?<Value>.+)'

# Expects output:
#
# True

$matches

# Expects output:
#
# Name                           Value
# ----                           -----
# Value                          Ruth
# Key                            Name
# 0                              Name: Ruth
