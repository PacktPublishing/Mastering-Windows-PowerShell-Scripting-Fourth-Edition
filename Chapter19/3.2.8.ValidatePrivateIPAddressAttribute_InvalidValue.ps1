# Requires 3.2.4 and 3.2.5

Test-Validate -IPAddress someString

# Expects error:
#
# Test-Validate: Cannot process argument transformation on parameter 'IPAddress'. Cannot convert value "someString" to type "System.Net.IPAddress". Error: "An invalid IP address was specified."
