'one', 'ONE', 'One' | Group-Object -CaseSensitive

# Expects output:
#
# Count Name                    Group
# ----- ----                    -----
#    1  one                     {one}
#    1  ONE                     {ONE}
#    1  One                     {One}