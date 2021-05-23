third

# Expects error:
#
# Get-Variable:
# Line |
#    3 |          Get-Variable -Name name -Scope 2 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | The scope number '2' exceeds the number of active scopes. (Parameter 'Scope')
# Actual value was 2.
# InvalidOperation:
# Line |
#    3 |          Get-Variable -Name name -Scope 2 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Error formatting a string: Index (zero based) must be greater than or equal to zero and less than the size of the argument list..
# Get-Variable:
# Line |
#    6 |          Get-Variable -Name name -Scope 1 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Cannot find a variable with the name 'name'.
# InvalidOperation:
# Line |
#    6 |          Get-Variable -Name name -Scope 1 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Error formatting a string: Index (zero based) must be greater than or equal to zero and less than the size of the argument list..
