# Requires 2.2.2

Test-ValidateNotNull -Parameter1 $null

# Expects error:
#
# Test-ValidateNotNull: Cannot validate argument on parameter 'Parameter1'. The argument is null. Provide a valid value for the argument, and then try running the command again.
