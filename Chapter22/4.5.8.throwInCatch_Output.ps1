# Requires 4.5.7

$Error.Clear()
Invoke-Something -ErrorAction SilentlyContinue

# Expects no output

$Error[0]

# Expects error record:
#
# Exception:
# Line |
#    9 |          throw 'An error occurred'
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~
#      | An error occurred
