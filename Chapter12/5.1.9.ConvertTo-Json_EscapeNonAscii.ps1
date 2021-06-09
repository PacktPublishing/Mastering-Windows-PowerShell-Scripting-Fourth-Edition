@{ String = 'Halló heimur' } |
    ConvertTo-Json -EscapeHandling EscapeNonAscii

# Expects output:
#
# {
#   "String": "Hall\u00f3 heimur"
# }
