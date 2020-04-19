Compare-Object -ReferenceObject 1, 2, 3, 4 -DifferenceObject 1, 2 -IncludeEqual

# Expects output:
#
# InputObject SideIndicator
# ----------- -------------
#           1 ==
#           2 ==
#           3 <=
#           4 <=