$hashtable = @{
    Key1 = 'Value1'
    Key2 = 'Value2'
}
foreach ($key in $hashtable.Keys) {
    $hashtable[$key] = "NewValue"
}

# Expects error:
#
# OperationStopped: Collection was modified; enumeration operation may not execute.
