$empty = New-Object Object
$empty | Add-Member -Name New -Value 'Hello world' -MemberType NoteProperty
$empty

# Expects output:
#
# New
# ---
# Hello world
