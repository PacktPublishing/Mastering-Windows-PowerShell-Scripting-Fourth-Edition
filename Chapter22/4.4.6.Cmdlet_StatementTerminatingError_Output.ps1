# Requires 4.4.5

caller

# Expects error:
#
# ConvertFrom-Json:
# Line |
#    2 |      ConvertFrom-Json -InputObject '{{'
#      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Conversion from JSON failed with error: Invalid property identifier character: {. Path '', line 1, position 1.
#
# Expects output:
#
# second
