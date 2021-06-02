$item = Get-Item C:\Windows\explorer.exe

# Sub-expressions and variable interpolation
"The file, $($item.Name), with path $item was last written on $($item.LastWriteTime)"

# The format operator
'The file, {0}, with path {1} was last written on {2}' -f @(
    $item.Name
    $item
    $item.LastWriteTime
)
