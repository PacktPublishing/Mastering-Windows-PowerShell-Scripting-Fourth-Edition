Compare-Object -ReferenceObject 1, 2, 3, 4 -DifferenceObject 1, 2

# Expects output:
#
# InputObject SideIndicator
# ----------- -------------
#           3 <=
#           4 <=