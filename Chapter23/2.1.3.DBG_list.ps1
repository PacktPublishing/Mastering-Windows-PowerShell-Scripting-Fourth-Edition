# Requires 2.1.1
# Requires DBG prompt

list 1 2

# Expects output:
#
# 1:  foreach ($name in $names) {
# 2:*     Get-Process $name -ErrorAction SilentlyContinue
