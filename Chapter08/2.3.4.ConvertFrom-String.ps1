'"bob",tim,geoff' | ConvertFrom-String -Delimiter ',' -PropertyNames name1, name2, name3

# Expects output:
#
# name1 name2 name3
# ----- ----- -----
# "bob" tim   geoff