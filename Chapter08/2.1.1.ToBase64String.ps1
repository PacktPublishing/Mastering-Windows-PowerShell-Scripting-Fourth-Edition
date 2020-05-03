[Byte[]]$bytes = 97, 98, 99, 100, 101
[Convert]::ToBase64String($bytes)

# Expects output:
#
# YWJjZGU=