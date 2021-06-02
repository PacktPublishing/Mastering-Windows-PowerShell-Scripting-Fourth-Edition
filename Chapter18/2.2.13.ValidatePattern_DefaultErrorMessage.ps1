# Requires 2.2.12

Test-ValidatePattern -Greeting 'hello Jim.'

# Expects error:
#
# Test-ValidatePattern: Cannot validate argument on parameter 'Greeting'. The argument "hello Jim." does not match the "^[A-Z]" pattern. Supply an argument that matches "^[A-Z]" and try the command again.
