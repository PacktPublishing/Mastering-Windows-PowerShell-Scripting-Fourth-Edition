Compare-Object -ReferenceObject 1, 2, 3, 4 -DifferenceObject 1, 2 -ExcludeDifferent -IncludeEqual -PassThru

# Expects output:
#
# 1
# 2