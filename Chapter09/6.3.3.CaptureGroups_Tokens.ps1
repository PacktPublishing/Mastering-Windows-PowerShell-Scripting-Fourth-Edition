'first second third' -replace '(first) ((second) (third))', '$1, $4, $2'

# Expects output:
#
# first, third, second third