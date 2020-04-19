(1..3 + 1..3) |
    ForEach-Object { [PSCustomObject]@{ Number = $_ } } |
    Select-Object -Property * -Unique

# Expects output:
#
# Number
# ------
#      1
#      2
#      3