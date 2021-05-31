'first second third' -replace '(first) (?:(second) (third))', '$1, $2, $3'

# Expects output:
#
# first, second, third
