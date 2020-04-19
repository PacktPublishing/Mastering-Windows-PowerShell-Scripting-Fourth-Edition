(1..3 + 1..3) | ForEach-Object {
    [PSCustomObject]@{
        Number = $_
    }
}


# Expects output:
#
# Number
# ------
#         1
#         2
#         3
#         1
#         2
#         3
