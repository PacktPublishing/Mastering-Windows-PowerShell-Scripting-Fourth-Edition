'one@one.example', 'two@one.example', 'three@two.example' |
    Group-Object { ($_ -split '@')[1] }

# Expects output:
#
# Count    Name                      Group
# -----    ----                      -----
#     2    one.example               {one@one.example, two@one.example}
#     1    two.example               {three@two.example}