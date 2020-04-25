$newArray = New-Object Object[] ($oldArray.Count - 1)
# Before the index
[Array]::Copy(
    $oldArray,    # Source
    $newArray,    # Destination
    49            # Number of elements to copy
)
# After the index
[Array]::Copy(
    $oldArray,    # Source
    50,           # Copy from index of Source
    $newArray,    # Destination
    49,           # Copy to index of Destination
    50            # Number of elements to copy
)