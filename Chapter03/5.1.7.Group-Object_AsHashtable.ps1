$hashtable = 'one', 'two', 'two' | Group-Object -AsHashtable -AsString
$hashtable['one']

# Expects output:
#
# one