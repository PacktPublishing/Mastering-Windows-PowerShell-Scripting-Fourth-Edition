# Requires 1.2.1

# Set to ensure the current preference value
$ErrorActionPreference = 'Continue'
Stop-Command

# Expects output:
#
# First
#
# Expects error:
#
# Exception:
# Line |
#    3 |      throw 'Error'
#      |      ~~~~~~~~~~~~~
#      | Error
