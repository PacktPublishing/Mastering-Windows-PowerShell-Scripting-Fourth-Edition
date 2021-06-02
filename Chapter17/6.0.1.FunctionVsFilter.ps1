function first { process { $_ } } # end block by default
filter second { $_ }              # process block by default
1..2 | first                      # explicit process

# Expects output:
#
# 1
# 2

1..2 | second                     # implicit process

# Expects output:
#
# 1
# 2
